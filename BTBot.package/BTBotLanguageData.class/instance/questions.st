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
		(#exp_all -> 'I need help in for').
		
		(#exp_method -> 'who has have is expert experience experts in for method ? ') .
		(#exp_class -> 'who has have is expert experience experts for in class ? ') .
		(#exp_package -> 'who has have is expert experience experts for in  package ?') .
		
		"(#usage_exp -> 'who is are using a uses has used class method')."
		"(#inf_package -> 'What is the information about this package ?') ."
		
		(#inf_greeting -> 'How are you? hi hello bounjour sup, whats up') .
		(#inf_greeting -> 'Who are you?').

		(#help -> 'what do you do your porpuse').
		(#help -> '--help').
		(#unknown_message -> 'tag_for_unknown_message') .
		(#unknown_message -> 'a an the is are it fyi btw') .
		"Unrelated-expertise interaction"
		
		(#msg_bot_inf -> 'what kind of information you have?').
		(#msg_bot_inf -> 'what can i ask you?').
		(#msg_bot_inf -> 'do you know anything?').
		
		}