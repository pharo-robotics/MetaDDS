querying
findTopicByName: aName ifFound: aFoundBlock ifNone: aBlock
	  ^ self topics detect: [  : t | t name = aName  ] ifFound: aFoundBlock ifNone: aBlock .