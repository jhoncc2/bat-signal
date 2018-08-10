data
answers 
	^ { 
		(#exp_empty -> 'I have found no experts for ').
		(#exp_all -> 'This people might help you with ').
		(#exp_method -> 'This people might help you with ') .
		(#exp_class -> 'This people might help you with ') .
		(#exp_package -> 'This people might help you with ') .
		(#inf_package -> 'I do not have this information right now') .
		(#inf_greeting -> 'Hi, I am ready for your questions') .
		(#unknown_message -> 'I do not have this information right now') .
		}