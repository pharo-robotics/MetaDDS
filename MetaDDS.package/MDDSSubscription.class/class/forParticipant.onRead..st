constructor
forParticipant: aParticipant onRead: onRead 
	^ self forParticipant: aParticipant onRead: onRead onFailure: self onFailure onStop: self onStop.