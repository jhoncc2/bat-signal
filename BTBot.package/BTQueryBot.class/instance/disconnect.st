actions
disconnect
	"bot disconnect."
	BTQueryBot allInstances 
		do: [ :ann | ann bot announcer subscriptions 
			do: [:e | ann bot announcer removeSubscription: e ]].