as yet unclassified
validateAndProcessHeader: aHeader
	^ (self topic name = aHeader topic and: [ self topic type verify: aHeader type md5: aHeader md5sum ])
		ifTrue: [ 
			self topic noticeConnectionWith: aHeader.
			true ]
		ifFalse: [ false ]