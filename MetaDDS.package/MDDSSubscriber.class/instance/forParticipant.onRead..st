subscription
forParticipant: aParticipant onRead: onRead
	^ self
		registerIfNeeded: aParticipant
		creatingSubscriptionWith: [ 
			(domain createSubscriptionFor: aParticipant)
				onRead: onRead;
				yourself ]