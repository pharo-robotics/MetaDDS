as yet unclassified
noticeConnectionWith: aHeader
	type isTypePlaceHolder ifTrue: [ 
		" Is a type holder "
		type := type resolveRealTypeFrom: aHeader 	
	]