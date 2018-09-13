as yet unclassified
findLocalTopicByName: aName ifFound: aFoundBlock ifNone: aBlock
	^ self createdTopics detect: [ :t | t name = aName ] ifFound: aFoundBlock ifNone: aBlock