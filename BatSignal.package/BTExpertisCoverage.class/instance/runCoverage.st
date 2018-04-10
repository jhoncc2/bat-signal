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
	self sanitizeDiscordExpertise.

	self calculateCoverageOnClasses.
	self calculateCoverageOnMethods.
	
	self printOut.
	
	self inspect