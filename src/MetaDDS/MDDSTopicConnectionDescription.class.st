"
Represents a connection that has something to do with a topic
"
Class {
	#name : #MDDSTopicConnectionDescription,
	#superclass : #MDDSConnectionDescription,
	#instVars : [
		'topicInteractor'
	],
	#category : 'MetaDDS-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSTopicConnectionDescription >> configureHeader: aHeader [
	aHeader
		callerId: self participant name;
		latching: self latching;
		topic: self topic name;
		type: self topic type name;
		md5sum: self topic type md5sum;
		message_definition: self topic type plainDefinition
]

{ #category : #accessing }
MDDSTopicConnectionDescription >> topic [
	^ topicInteractor topic
]

{ #category : #accessing }
MDDSTopicConnectionDescription >> topicInteractor [
	^ topicInteractor
]

{ #category : #accessing }
MDDSTopicConnectionDescription >> topicInteractor: anObject [
	topicInteractor := anObject
]

{ #category : #'as yet unclassified' }
MDDSTopicConnectionDescription >> validateAndProcessHeader: aHeader [
	aHeader errorField ifNotNil: [ :value | self error: value ].
	self flag: #CheckHowToImproveSecurityWhenHeadersTopicIsNil.
	^ ((self topic name = aHeader topic
		or: [ aHeader topic isNil and: [ aHeader service isNil ] ])
		and: [ self topic type verify: aHeader type md5: aHeader md5sum ])
		ifTrue: [ self topic noticeConnectionWith: aHeader.
			true ]
		ifFalse: [ false ]
]
