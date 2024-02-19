abstract sig Bool {}
one sig True, False extends Bool {}

abstract sig Type {
  name: one String
}

sig Categorical, Text extends Type {}

sig Numerical extends Type {
  continuous: one Bool,
  spacing: lone Int
}{
  continuous = True implies no spacing
}

sig Tensor extends Type {
  dimensions: one Int
}

sig Feature {
  id: Int,
  featureGroup: set FeatureGroup,
  defaultValue: lone Int
}

sig FeatureGroup {
  name: one String,
  size: one Int,
  type: one Type,
  features: set Feature,
  cardinality: Int
}{
  cardinality > 0
  cardinality = #features
  size >= 0
}

abstract sig Spec {
  inputFeatureGroups: set FeatureGroup,
  outputFeatureGroups: set FeatureGroup
}{
  all fg: FeatureGroup | (fg in inputFeatureGroups => #fg.features > 0) and 
                         (fg in outputFeatureGroups => #fg.features > 0)
  no outputFeatureGroups.features & inputFeatureGroups.features
}

sig Solution {
  specs: set Spec
}{
  all s: specs | all s2: specs - s | no s.outputFeatureGroups & s2.inputFeatureGroups
}

sig Generator extends Spec {}

sig Transform {
  lhs: set Spec,
  rhs: set Spec,
  outputSpec: one Spec,
  constraints: set Constraint
}{
  outputSpec in lhs
}

abstract sig Constraint {
  satisfies: FeatureGroup -> Bool
}

sig SizeConstraint extends Constraint {
  limit: one Int
}{
  limit >= 0
}

sig TypeConstraint extends Constraint {
  targetType: one Type
}

fact GeneratorsHaveNoInput {
  all g: Generator | no g.inputFeatureGroups
}

fact OutputFeatureGroupsUnique {
  all s1, s2: Spec | s1 != s2 implies no s1.outputFeatureGroups & s2.outputFeatureGroups
}

fact FeaturesUniqueAcrossAllFeatureGroups {
  all fg1, fg2: FeatureGroup | fg1 != fg2 implies no fg1.features & fg2.features
}

fact AvoidLoops {
  all s: Spec, f: Feature | 
    (f in s.inputFeatureGroups.features and f in s.outputFeatureGroups.features) => 
      f.defaultValue != none
}

pred applyTransform[sol: Solution, trans: Transform] {
  some s: sol.specs & trans.lhs {
  all c: trans.constraints { 
    some fg: s.outputFeatureGroups { 
      c.satisfies[fg] = True
    }
  }
  sol.specs = sol.specs - trans.lhs + trans.rhs
  }
}

pred isStronglyConsistent[sol: Solution, trans: Transform] {
  some s: sol.specs & trans.lhs {
    trans.outputSpec.outputFeatureGroups = s.outputFeatureGroups
  }
}

pred isWeaklyConsistent[sol: Solution, trans: Transform] {
  some s: sol.specs & trans.lhs {
    trans.outputSpec.outputFeatureGroups.type = s.outputFeatureGroups.type
    trans.outputSpec = s
  }
}

pred isNotConsistent[sol: Solution, trans: Transform] {
  some s: sol.specs & trans.lhs {
    trans.outputSpec != s
  }
}
