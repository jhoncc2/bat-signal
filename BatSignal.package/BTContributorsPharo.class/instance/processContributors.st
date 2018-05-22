as yet unclassified
processContributors
	contributors := Dictionary new.
	methods := Dictionary new.
	classes := Dictionary new.
	packages := Dictionary new.
	self processMethods.
	self reverseProcessing.