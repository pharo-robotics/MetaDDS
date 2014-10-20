accessing
registerTopicPublisher: aPublisher for: aParticipant
	| mirror |
	mirror := self reflectParticipant: aParticipant.
	^ proxy registerTopicPublisher: aPublisher for: mirror in: domain.