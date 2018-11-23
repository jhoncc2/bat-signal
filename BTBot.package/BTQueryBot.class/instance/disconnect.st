actions
disconnect
	<script: 'BTQueryBot instance disconnect'>
	bot disconnect.
	bot announcer unsubscribe: self.
	"BTQueryBot allInstances
		do: [ :ann | 
			ann bot ifNotNil: [ ann bot announcer subscriptions subscriptions
				do: [ :e | ann bot announcer removeSubscription: e ] ] ]"