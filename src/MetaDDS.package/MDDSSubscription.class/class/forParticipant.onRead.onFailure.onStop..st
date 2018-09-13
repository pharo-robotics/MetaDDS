constructor
forParticipant: aParticipant onRead: onRead onFailure: onFailure onStop: onStop 
	^ self new participant: aParticipant; onRead:  onRead; onFailure: onFailure; onStop: onStop ; yourself.