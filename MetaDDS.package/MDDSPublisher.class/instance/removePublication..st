as yet unclassified
removePublication: aPublication
	publications remove: aPublication.
	self
		publicationFor: aPublication participant
		ifNone: [ domain note: (MDDSTopicAnnouncement participant: aPublication participant isNotPublishingAnymoreOn: self) ]