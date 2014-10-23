registry
register: aSubscription
	(self subcriptionsFor: aSubscription participant) isEmpty
		ifTrue: [ domain note: (MDDSTopicAnnouncement participant: aSubscription participant isNowSubscribedTo: self) ].
	self addSubscription: aSubscription.
	^ aSubscription