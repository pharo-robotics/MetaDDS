as yet unclassified
notePublication: aMDDSIsPublishingAnnouncement
	| publication reading writing |
	publication := aMDDSIsPublishingAnnouncement publication.
	aMDDSIsPublishingAnnouncement topic subscriber subscriptions
		do: [ :subscription | 
			reading := MDDSReadingReferenceConnection dispatchingTo: aMDDSIsPublishingAnnouncement topic subscriber.
			reading participant: aMDDSIsPublishingAnnouncement publication participant.
			writing := MDDSWritingReferenceConnection linkedTo: reading.
			writing participant: subscription participant.
			publication register: writing.
			subscription registerConnection: reading ]