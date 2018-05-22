printing
printOut
	Transcript 
		show: 'Smalltalk allClassesAndTraits :' , (Smalltalk allClassesAndTraits size) asString ; cr;
		show: 'CompiledMethod allInstances :' , (CompiledMethod allInstances size) asString ; 
		cr; cr;
		
		show: 'Expertise Calculator'; cr;
		show: 'ExpertiseCalculator classes (instances and their classes) :' , (calculatedClasses size) asString; 
		cr;
		show: 'ExpertiseCalculator methods :' , 
			(calculatedMethods select: [:e | (e keys select: #isElegible) size > 1 ]) size asString; 
		cr; cr;
		
		show: 'Discord Expertise Coverage'; cr;
		show: 'Coverage on Classes ' , 
			((calculatedClasses select: [ :e | (e keys  select: #hasContacts) size > 0]) size / calculatedClasses size) asFloat asString;
		cr;
	
		show: 'Coverage on Methods ' , 
			((calculatedMethods select: [ :e | (e keys  select: #hasContacts) size > 0]) size / calculatedMethods size) asFloat asString;
		cr.