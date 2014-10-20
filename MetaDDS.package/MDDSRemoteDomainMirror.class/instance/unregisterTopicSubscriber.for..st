accessing
unregisterTopicSubscriber: aSubscriber for: aParticipant
	| mirror |
	mirror := self reflectParticipant: aParticipant.
	^ proxy unregisterTopicSubscriber: aSubscriber for: mirror.