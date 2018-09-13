as yet unclassified
publisher: aPublisher participant: aParticipantMirror onNewConnection: aValuableWithOneArg
	^ self new
		topicInteractor: aPublisher;
		participant: aParticipantMirror;
		onNewConnection: aValuableWithOneArg;
		yourself