subscription
forParticipant: participant onRead: aBlockClosure 
	^ self register: (MDDSSubscription forParticipant: participant  onRead: aBlockClosure)