*BatSignal
discordHelpExperticeAction
	"<pageAction>"
	"<pageActionOrder: 47>"
	^ GLMGenericAction new
		action: [ :presentation | 
			BTHelpPlaygroundCommand new
				playground: self;
				executeAsync ];
		icon: DSIcons discord;
		title: 'Share Playground' translated