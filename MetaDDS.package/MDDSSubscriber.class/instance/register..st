registry
register: aSubscription
	subscriptions add: aSubscription.
	domain note: (MDDSTopicAnnouncement participant: aSubscription participant isNowSubscribedTo: self with: aSubscription ).
	^ aSubscription