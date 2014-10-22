subscription
forParticipant: aParticipant onRead: onRead onFailure: onFailure onStop: onStop
	^ self
		register:
			(MDDSSubscription
				forParticipant: aParticipant
				onRead: onRead
				onFailure: onFailure
				onStop: onStop)