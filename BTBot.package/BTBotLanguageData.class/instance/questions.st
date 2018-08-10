data
questions 
	^ { 
		(#exp_all -> 'who is expert in ? ').
		(#exp_method -> 'who is expert in method ? ') .
		(#exp_class -> 'who is expert in class ? ') .
		(#exp_package -> 'who is expert in package ? ') .
		(#inf_package -> 'What is the information about this package ?') .
		(#inf_greeting -> 'How are you? hi hello bounjour sup, whats up') .
		(#unknown_message -> 'for an unknown message') .
		}