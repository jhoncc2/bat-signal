initialization
sendButtonMorph
	^ PluggableButtonMorph
		newButtonFor: self
		getState: nil
		action: #send
		arguments: nil
		getEnabled: #isSendEnabled
		label: 'Send Message'
		help: 'Send Message to Discord'