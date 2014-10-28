as yet unclassified
noteSubscriptionFinished: aMDDSIsNotSubscribedAnnouncement
	aMDDSIsNotSubscribedAnnouncement topic publisher publications
		do: [ :p | p connections removeAll: (p connections select: [ :c | c participant = aMDDSIsNotSubscribedAnnouncement participant] ) ].