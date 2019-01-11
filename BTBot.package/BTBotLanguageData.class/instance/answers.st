data
answers 
	^ { 
		(#exp_empty -> 'I have found no experts for ').
		(#exp_all -> 'These people might help you with ').
		(#exp_method -> 'experts for method ') .
		(#exp_class -> 'experts for class ') .
		(#exp_package -> 'experts for package ') .

		(#usage_exp -> 'These people make use of ').
		(#inf_package -> 'I do not have that information right now') .
		(#inf_greeting -> 'Hi, I am ready for your questions. type --help if you want to know more about me') .
		(#unknown_message -> 'I do not have that information right now') .
		(#help -> 'I provide experts for a given code artifact (the name of a: method, class or package), I use some strategies to provide accurate data. Start by asking "experts for Object class?"').
		
		#hierarchy_method ->  'experts overrode the method '.
		#hierarchy_class ->  'experts created subclasses of '.
		#hierarchy_package ->  'experts created subclasses of classes in package '.
		}