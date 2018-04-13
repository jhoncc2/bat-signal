actions
runCoverage
	<script:'self new runCoverage'>
	"
	self new runCoverage
	"
	"configuration"
	self discordExpertise: BTContact knownExpertise.
	self expertiseCalculator: self class expertiseCalculator.
	self likehoodStrategyByUserName.

	self calculateCoverageOnClasses.
	self calculateCoverageOnMethods.
	
	self printOut.
	
	self class saveInstance: self.
	
	self inspect