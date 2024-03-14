

module formalMethods/curriculum


some sig Course {
	specializations: some Specialization 
} 


some sig CoreCourse in Course {} 

sig Specialization {}



sig Student {
 	coreCourses: some CoreCourse,
	nonCoreCourses: lone Course-CoreCourse
}

pred show(){}
run show
