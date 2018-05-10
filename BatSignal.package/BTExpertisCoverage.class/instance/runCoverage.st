actions
runCoverage
	<script:'self new runCoverage'>
	"
	self new runCoverage
	"
	"configuration"
	self likehoodStrategyByUserName.
	self discordExpertise: BTContact knownExpertise.
	self expertiseCalculator: self class expertiseCalculator.
	
	self calculateCoverageOnMethods.
	self calculateCoverageOnClasses.
	self calculateCoverageOnPackages.
	
	self printOut.
	
	self class saveInstance: self.
	
	self inspect