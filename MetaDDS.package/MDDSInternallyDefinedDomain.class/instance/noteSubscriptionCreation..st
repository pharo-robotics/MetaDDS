as yet unclassified
noteSubscriptionCreation: aMDDSSubscriptionCreatedAnnouncement
	
	aMDDSSubscriptionCreatedAnnouncement topic  publisher publications do: [ 
		:publication | 
		publication register: (MDDSWritingReferenceConnection subscribing: aMDDSSubscriptionCreatedAnnouncement subscription )
	 ].
	
	