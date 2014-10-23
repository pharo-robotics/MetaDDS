as yet unclassified
isRegistered: aMDDSTopic
	^ createdTopics at: aMDDSTopic name ifPresent: [ true ] ifAbsent: [false].
	