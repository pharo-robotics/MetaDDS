as yet unclassified
testStopPublishingFailsIfIsNotPublishing
	self should: [ publisher stopPublishingParticipant: participant ] raise: Error