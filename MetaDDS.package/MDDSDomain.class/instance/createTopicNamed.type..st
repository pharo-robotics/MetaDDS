as yet unclassified
createTopicNamed: aName type: aType
	
	^ createdTopics at: aName, aType name ifAbsentPut: [ 
		 MDDSTopic domain: self name: aName type: aType
	]