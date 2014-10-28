as yet unclassified
initialize
	super initialize.
	protocols := Set new.
	createdTopics := Dictionary new.
	announcer := Announcer new.
	
	self when: MDDSIsPublishingAnnouncement send: #notePublication: to: self. 
	self when: MDDSIsNotPublishingAnnouncement send: #notePublicationFinished: to: self. 
	self when: MDDSIsSubscribedAnnouncement send: #noteSubscription: to: self. 
	self when: MDDSIsNotSubscribedAnnouncement send: #noteSubscriptionFinished: to: self. 
