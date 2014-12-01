accessing
publishing: aParticipant
	publishers add: aParticipant.
	domain note: (MDDSTopicAnnouncement participant: aParticipant isNowPublishingOn: self through: self).