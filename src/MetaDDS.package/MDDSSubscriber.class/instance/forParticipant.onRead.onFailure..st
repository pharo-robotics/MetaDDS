creation
forParticipant: aParticipant onRead: onRead onFailure: onFailure
	^ self
		registerIfNeeded: aParticipant
		creatingSubscriptionWith: [ 
			(domain createSubscriptionFor: aParticipant)
				onRead: onRead;
				onFailure: onFailure;
				yourself ]