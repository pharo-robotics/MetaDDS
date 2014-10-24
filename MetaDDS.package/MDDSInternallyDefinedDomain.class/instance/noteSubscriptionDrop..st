as yet unclassified
noteSubscriptionDrop: aMDDSSubscriptionDropedAnnouncement
	aMDDSSubscriptionDropedAnnouncement topic publisher publications
		do: [ :publication | 
			publication connections
				select: [ :conn | 
					(conn isKindOf: MDDSWritingReferenceConnection)
						and: [ conn subscription = aMDDSSubscriptionDropedAnnouncement subscription ] ]
				thenDo: [ :conn | conn subscription: nil ] ]