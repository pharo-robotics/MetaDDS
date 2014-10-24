registry
register: aSubscription
	(self subcriptionsFor: aSubscription participant) isEmpty
		ifTrue: [ domain note: (MDDSTopicAnnouncement participant: aSubscription participant isNowSubscribedTo: self) ].
	domain note: (MDDSTopicAnnouncement subscriptionCreated: aSubscription for: topic).
	self addSubscription: aSubscription.
	^ aSubscription