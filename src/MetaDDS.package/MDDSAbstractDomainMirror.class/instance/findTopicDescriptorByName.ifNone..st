parameters
findTopicDescriptorByName: aName ifNone: aBlock
	^ self topics detect: [ :t | t name = aName ] ifNone: aBlock