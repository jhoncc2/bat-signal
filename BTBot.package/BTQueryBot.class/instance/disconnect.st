actions
disconnect
	<script: 'BTQueryBot new disconnect'>
	"bot disconnect."
	BTQueryBot allInstances
		do: [ :ann | 
			ann bot ifNotNil: [ ann bot announcer subscriptions subscriptions
				do: [ :e | ann bot announcer removeSubscription: e ] ] ]