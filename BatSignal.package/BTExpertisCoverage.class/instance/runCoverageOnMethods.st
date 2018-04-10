running
runCoverageOnMethods
	<script:'self new runCoverageOnMethods'>
	"
	self new runCoverageOnMethods
	"
	self naiveStrategyByUserName.
	self discordExpertise: self class knownExpertise.
	self expertiseCalculator: self class expertiseCalculator.
	self sanitizeDiscordExpertise.
	
	self calculateCoverageOnMethods.
	self inspect