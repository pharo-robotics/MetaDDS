Class {
	#name : #MDDSConnectionDescriptionTest,
	#superclass : #TestCase,
	#instVars : [
		'topic',
		'interactor',
		'participant'
	],
	#category : 'MetaDDSTests-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSConnectionDescriptionTest >> headerWrongSum [
	
	^ self validHeader md5sum: ' wrong ' ; yourself. 
	
]

{ #category : #'as yet unclassified' }
MDDSConnectionDescriptionTest >> headerWrongTopic [
	
	^ self validHeader topic: ' /wrong ' ; yourself. 
	
]

{ #category : #'as yet unclassified' }
MDDSConnectionDescriptionTest >> headerWrongTopicType [
	
	^ self validHeader type: ' /wrong_type ' ; yourself. 
	
]

{ #category : #'as yet unclassified' }
MDDSConnectionDescriptionTest >> setUp [
	topic := MDDSTopic domain: nil name: '/test' type: (MDDSType domain: nil name: '/test_type' marshaller: nil md5sum: 'abc' ).
	 
	interactor := MDDSTopicInteractorMock new.
	interactor topic: topic. 
	
	participant := MDDSParticipantMock new. 
]

{ #category : #'as yet unclassified' }
MDDSConnectionDescriptionTest >> validHeader [
	| valid |
	valid := MDDSHandshakeHeader new. 
	valid md5sum: 'abc'.
	valid topic: '/test'.
	valid type: '/test_type'.
	
	^ valid. 
	
]
