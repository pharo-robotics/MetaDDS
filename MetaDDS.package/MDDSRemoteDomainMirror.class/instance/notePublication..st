accessing
notePublication: aMDDSIsPublishingAnnouncement
	| mirror |
	mirror := self reflectParticipant: aMDDSIsPublishingAnnouncement participant.
	^ proxy registerTopicPublisher: aMDDSIsPublishingAnnouncement publisher for: mirror in: domain.