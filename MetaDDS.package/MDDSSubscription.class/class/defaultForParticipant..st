constructor
defaultForParticipant: aParticipant
	^ self forParticipant: aParticipant onRead: self onRead onFailure: self onFailure onStop: self onStop.