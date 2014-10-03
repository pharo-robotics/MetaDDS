as yet unclassified
isRegistered: aMDDSTopic 
	^ mirror findTopicByName: aMDDSTopic name
			  ifFound: [ : topic | topic type name = aMDDSTopic type name ] 
			  ifNone: [ false ].