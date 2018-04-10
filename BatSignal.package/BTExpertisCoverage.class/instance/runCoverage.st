running
runCoverage
	<script:'self new runCoverage'>
	"
	self new runCoverage
	"
	"configuration"
	self discordExpertise: self class knownExpertise.
	self expertiseCalculator: self class expertiseCalculator.
	self likehoodStrategyByUserName.
	
	self calculateCoverageOnClasses.
	self calculateCoverageOnMethods.
	self inspect