data
questions 
	^ { 
		(#exp_all -> 'who is expert in ? ').
		(#exp_all -> 'experts in ? ').
		(#exp_all -> 'experts for ? ').
		(#exp_all -> 'who knows about ').
		(#exp_all -> 'who has worked with ').
		(#exp_all -> 'who is working with ').
		(#exp_all -> 'who has experience with ').
		(#exp_all -> 'who has some experience in').
		(#exp_all -> 'is there anybody anyone that can help me with ? ').
		(#exp_method -> 'who has have is expert experience experts in for method ? ') .
		(#exp_class -> 'who has have is expert experience experts for in class ? ') .
		
		"(#usage_exp -> 'who is are using a uses has used class method')."
		
		(#exp_package -> 'who has have is expert experience experts for in  package ? ') .
		(#inf_package -> 'What is the information about this package ?') .
		(#inf_greeting -> 'How are you? hi hello bounjour sup, whats up') .
		(#unknown_message -> 'for an unknown message') .
		}