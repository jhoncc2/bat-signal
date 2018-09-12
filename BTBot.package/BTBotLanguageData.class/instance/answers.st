data
answers 
	^ { 
		(#exp_empty -> 'I have found no experts for ').
		(#exp_all -> 'These people might help you with ').
		(#exp_method -> 'experts for method ') .
		(#exp_class -> 'experts for class ') .
		(#exp_package -> 'experts for package ') .

		(#usage_exp -> 'These people make use of ').
		(#inf_package -> 'I do not have this information right now') .
		(#inf_greeting -> 'Hi, I am ready for your questions') .
		(#unknown_message -> 'I do not have this information right now') .
		}