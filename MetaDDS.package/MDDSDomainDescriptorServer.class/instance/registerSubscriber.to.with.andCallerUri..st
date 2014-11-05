implemented
registerSubscriber: aCallerId to: aTopicName with: aTopicMessageType andCallerUri: anUri
	| topic participant |
	self halt.
	topic := domain topicDescriptorFor: aTopicName andType: aTopicMessageType.
	participant := domain participantDescriptorFor: aCallerId connectedAt: anUri.
	topic subscriber subscribe: participant