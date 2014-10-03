accessing
registerTopicSubscriber: aSubscriber for: aParticipant
	| mirror |
	mirror := self reflectParticipant: aParticipant.
	^ proxy registerTopicSubscriber: aSubscriber for: mirror in: domain.