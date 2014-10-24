as yet unclassified
notePublication: aMDDSIsPublishingAnnouncement
	| publication | 
	publication := aMDDSIsPublishingAnnouncement  publisher publicationFor: aMDDSIsPublishingAnnouncement participant ifNone: [ self error: 'Inconsistent' ].
	
	aMDDSIsPublishingAnnouncement topic subscriber subscriptions do: [
		: subs |
		publication register: (MDDSWritingReferenceConnection subscribing: subs).
	
	].