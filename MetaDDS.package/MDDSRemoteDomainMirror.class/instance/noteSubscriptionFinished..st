accessing
noteSubscriptionFinished: aMDDSIsNotSubscribedAnnouncement 
	| mirror |
	mirror := self reflectParticipant: aMDDSIsNotSubscribedAnnouncement participant.
	^ proxy unregisterTopicSubscriber: aMDDSIsNotSubscribedAnnouncement subscriber for: mirror