accessing
notePublicationFinished: aMDDSIsNotPublishingAnnouncement 
	| mirror |
	mirror := self reflectParticipant: aMDDSIsNotPublishingAnnouncement participant.
	^ proxy unregisterTopicPublisher: aMDDSIsNotPublishingAnnouncement publisher for: mirror