as yet unclassified
initialize
	super initialize.
	protocols := Set new.
	createdTopics := Dictionary new.
	announcer := Announcer new.
	
	announcer when: MDDSIsPublishingAnnouncement send: #notePublication: to: self. 
	announcer when: MDDSIsNotPublishingAnnouncement send: #notePublicationFinished: to: self. 
	announcer when: MDDSIsSubscribedAnnouncement send: #noteSubscription: to: self. 
	announcer when: MDDSIsNotSubscribedAnnouncement send: #noteSubscriptionFinished: to: self. 