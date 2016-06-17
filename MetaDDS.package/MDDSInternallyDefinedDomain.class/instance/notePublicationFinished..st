accessing
notePublicationFinished: aMDDSIsNotPublishingAnnouncement
	aMDDSIsNotPublishingAnnouncement topic subscriber subscriptions
		do: [ :s | s connections removeAll: (s connections select: [ :c | c participant = aMDDSIsNotPublishingAnnouncement participant ]) ]