implemented
unregisterPublisher: aCallerId from: aTopicName andCallerUri: anUri
	| topic participant |
	topic := domain topicDescriptorFor: aTopicName.
	participant := domain participantDescriptorFor: aCallerId connectedAt: anUri.
	topic publisher stopPublishing: participant