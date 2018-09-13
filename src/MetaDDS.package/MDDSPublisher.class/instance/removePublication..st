as yet unclassified
removePublication: aPublication
	| announcement |
	publications remove: aPublication ifAbsent: [  ^ self  ] .
	announcement := MDDSTopicAnnouncement
		participant: aPublication participant
		isNotPublishingAnymoreOn: self
		through: aPublication.
	domain note: announcement