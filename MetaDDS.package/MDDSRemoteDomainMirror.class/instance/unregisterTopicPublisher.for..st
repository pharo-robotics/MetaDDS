accessing
unregisterTopicPublisher: aPublisher for: aParticipant
	| mirror |
	mirror := self reflectParticipant: aParticipant.
	^ proxy unregisterTopicPublisher: aPublisher for: mirror