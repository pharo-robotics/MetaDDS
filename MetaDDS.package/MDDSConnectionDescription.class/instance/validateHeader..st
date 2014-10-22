as yet unclassified
validateHeader: aHeader
	^ self topic name = aHeader topic
		and: [ self topic type name = aHeader type and: [ self topic type md5sum = aHeader md5sum ] ]