accessing
noteSubscription: aMDDSIsSubscribedAnnouncement 
	| mirror |
	mirror := self reflectParticipant: aMDDSIsSubscribedAnnouncement participant.
	[^ proxy registerTopicSubscriber: aMDDSIsSubscribedAnnouncement subscriber for: mirror in: domain.] on: ConnectionTimedOut  do: [  self logCr: 'Master is not available' ].