"
A dummy mock
"
Class {
	#name : #MDDSTopicInteractorMock,
	#superclass : #Object,
	#instVars : [
		'topic'
	],
	#category : 'MetaDDSTests-Mocks'
}

{ #category : #accessing }
MDDSTopicInteractorMock >> topic [
	^ topic
]

{ #category : #accessing }
MDDSTopicInteractorMock >> topic: anObject [
	topic := anObject
]
