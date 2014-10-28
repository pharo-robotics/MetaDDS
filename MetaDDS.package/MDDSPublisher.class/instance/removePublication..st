as yet unclassified
removePublication: aPublication
	| announcement |
	publications remove: aPublication.
	announcement := MDDSTopicAnnouncement
		participant: aPublication participant
		isNotPublishingAnymoreOn: self
		through: aPublication.
	domain note: announcement