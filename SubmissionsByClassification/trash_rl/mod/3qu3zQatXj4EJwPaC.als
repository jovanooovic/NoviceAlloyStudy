open util/ordering[Step]

sig Stack {}

sig Step {
	charterer: Stack,
	viewer: Stack,
	webpage: Webpage,
	action: lone Action
} {
	viewer = charterer
}

enum Webpage { overview, form, details_page }
enum Action { click_create, provide_details }

fact initial_state {
	first.webpage = overview
}

fact final_state {
	last.webpage = details_page
}

fact create_voyage {
	
	first.action = click_create
	
	all s: Step {
		let s2 = s.next {		
			
			s.webpage = overview and s.action = click_create => 
				s2.webpage = form and s2.action = provide_details
	
			
			s.webpage = form and s.action = provide_details =>
				s2.webpage = form and s2.action = click_create
	
			
			s.webpage = form and s.action = click_create =>
				s2.action = none and s2.webpage = details_page
		}
	}
}

fact authorization {
	all disj s, s2: Step |
		s.charterer = s2.charterer
}

assert visibility {
	no s: Step | s.viewer != first.viewer
}

assert lastPage {
	last.webpage = details_page
}

check visibility for 10 but 5 Stack
run{}  for 4 but exactly 5 Stack
