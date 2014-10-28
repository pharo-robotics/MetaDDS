subscription
forParticipant: aParticipant onRead: onRead onFailure: onFailure onStop: onStop
	^ self
		registerIfNeeded: aParticipant
		creatingSubscriptionWith: [ 
			(domain createSubscriptionFor: aParticipant)
				onRead: onRead;
				onFailure: onFailure;
				onStop: onStop;
				yourself ]