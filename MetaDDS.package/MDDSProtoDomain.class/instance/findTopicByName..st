querying
findTopicByName: aName
	  ^ self findTopicByName: aName ifNone: [ MDDSError signal: 'There is not topic named ', aName ]