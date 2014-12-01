accessing
subscribe: aParticipant
	subscribed add: aParticipant.
	domain note: (MDDSTopicAnnouncement participant: aParticipant isNowSubscribedTo: self with: self ).