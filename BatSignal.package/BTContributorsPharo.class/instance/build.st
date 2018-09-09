build
build
	self processContributors.
	self bindDiscordExpertise.
	"save instance for large processing"
	self class saveInstance: self
