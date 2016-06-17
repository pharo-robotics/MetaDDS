parameters
findTopicDescriptorsByName: aName
	^ self findTopicDescriptorByName: aName ifNone: [ MDDSError signal: 'There is not topic named ' , aName ]