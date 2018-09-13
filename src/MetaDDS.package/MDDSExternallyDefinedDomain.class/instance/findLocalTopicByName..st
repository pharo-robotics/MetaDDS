querying
findLocalTopicByName: aName
	^ self findLocalTopicByName: aName ifNone: [ MDDSError signal: 'There is not topic named ' , aName ]