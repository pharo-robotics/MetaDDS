accessing
createTopicNamed: aName type: aType
	self error: ' should call domain not mirror '.
	^ domain createTopicNamed: aName type: aType.
	