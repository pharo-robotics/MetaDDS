as yet unclassified
findLocalTopicByName: aName ifNone: aBlock
	^ self createdTopics detect: [ :t | t name = aName ] ifNone: aBlock