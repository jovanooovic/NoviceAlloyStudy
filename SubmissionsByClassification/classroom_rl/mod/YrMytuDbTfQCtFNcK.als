open util/ordering[TTD] as D
open util/ordering[VSS] as V
sig VSS {}
sig TTD {
start : one VSS,
end : one VSS
} { end.gte[start] }
fact trackSections {
all ttd:TTD-D/last | ttd.end.V/next = (ttd.D/next).start
D/first.start = V/first and D/last.end= V/last }
fun _VSSs : TTD -> VSS {
{ t:TTD, v: t.start.*V/next & t.end.*(~V/next) } }


var sig Reports in TTD {}
fact TTDReports {
always all t:TTD |
t not in Reports implies t in Reports'
}
run {eventually some Reports} for 2 TTD, 4 VSS
