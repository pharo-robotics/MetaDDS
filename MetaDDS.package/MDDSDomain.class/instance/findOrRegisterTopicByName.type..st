as yet unclassified
findOrRegisterTopicByName: aName type: aTypeName
	| found typeDesc |
	typeDesc := MDDSTypeDescriptor domain: self name: aTypeName.
	found := self
		findTopicByName: aName
		ifNone: [ (MDDSTopicDescriptor domain: self name: aName type: typeDesc) createTopic ].
	((typeDesc describes: found type) not and: [ found type isTypePlaceHolder ])
		ifTrue: [ found type: typeDesc createType ].
	^ found