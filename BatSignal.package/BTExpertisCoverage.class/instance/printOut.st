printing
printOut
	Transcript 
		show: 'Smalltalk allClassesAndTraits :' , (Smalltalk allClassesAndTraits size) asString ; cr;
		show: 'Smalltalk allMethods :' , (Smalltalk allMethods size) asString ; 
		cr; cr;
		
		show: 'Expertise Calculator'; cr;
		show: 'ExpertiseCalculator classes (instances and their classes) :' , (expertiseCalculator classes size) asString ; 
		cr;
		show: 'ExpertiseCalculator methods :' , (expertiseCalculator methods size) asString ; 
		cr; cr;
		
		show: 'Discord Expertise Coverage'; cr;
		show: 'Coverage on Classes ' , 
			((coveredClasses select: [ :e | e value isNotEmpty ]) size / expertiseCalculator classes size) asFloat asString; cr;
	
		show: 'Coverage on Methods ' , 
			((coveredMethods select: [ :e | e value isNotEmpty ]) size / expertiseCalculator methods size) asFloat asString;
		cr.