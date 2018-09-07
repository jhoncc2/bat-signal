data
questions 
	^ { 
		(#exp_all -> 'who is expert in ? ').
		(#exp_all -> 'experts in ? ').
		(#exp_all -> 'who knows about ').
		(#exp_all -> 'who has worked with ').
		(#exp_all -> 'who is working with ').
		(#exp_all -> 'who has experience with ').
		(#exp_all -> 'who has some experience in').
		(#exp_all -> 'who has used the ').
		(#exp_method -> 'who is expert in method ? ') .
		(#exp_class -> 'who is expert in class ? ') .
		(#exp_package -> 'who is expert in package ? ') .
		(#inf_package -> 'What is the information about this package ?') .
		(#inf_greeting -> 'How are you? hi hello bounjour sup, whats up') .
		(#unknown_message -> 'for an unknown message') .
		}