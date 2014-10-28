as yet unclassified
noteSubscription: aMDDSIsSubscribedAnnouncement
	| subscription reading writing |
	subscription := aMDDSIsSubscribedAnnouncement subscription.
	aMDDSIsSubscribedAnnouncement topic publisher publications
		do: [ :publication | 
			reading := MDDSReadingReferenceConnection dispatchingTo: aMDDSIsSubscribedAnnouncement subscriber.
			reading participant: publication participant.
			writing := MDDSWritingReferenceConnection linkedTo: reading.
			writing participant: aMDDSIsSubscribedAnnouncement subscription participant.
			publication register: writing.
			subscription registerConnection: reading ]