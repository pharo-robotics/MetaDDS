as yet unclassified
validateAndProcessHeader: aHeader
	aHeader errorField ifNotNil: [ :value | self error: value ].
	self flag: #CheckHowToImproveSecurityWhenHeadersTopicIsNil.
	^ ((self topic name = aHeader topic
		or: [ aHeader topic isNil and: [ aHeader service isNil ] ])
		and: [ self topic type verify: aHeader type md5: aHeader md5sum ])
		ifTrue: [ self topic noticeConnectionWith: aHeader.
			true ]
		ifFalse: [ false ]