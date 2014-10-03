accessing
unregisterTopicSubscriber: aSubscriber for: aParticipant
	| mirror |
	mirror := self reflectParticipant: aParticipant.
	^ proxy unregisterTopicSubscriber: aSubscriber topic for: mirror.