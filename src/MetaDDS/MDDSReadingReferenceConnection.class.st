"
A MDDSReadingReferenceConnection

is the reification of the reading connection but based on a reference. Is for local participants
"
Class {
	#name : #MDDSReadingReferenceConnection,
	#superclass : #MDDSReadingConnection,
	#instVars : [
		'participant'
	],
	#category : 'MetaDDS-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSReadingReferenceConnection class >> dispatchingTo: aMessageDispatcher [
	^ self new messageDispatcher: aMessageDispatcher; yourself.
]

{ #category : #dispatching }
MDDSReadingReferenceConnection >> dispatch: aMessage [
	messageDispatcher dispatch: aMessage.
]

{ #category : #testing }
MDDSReadingReferenceConnection >> isConnected [
	^ messageDispatcher isNotNil.
]

{ #category : #accessing }
MDDSReadingReferenceConnection >> participant [
	^ participant
]

{ #category : #accessing }
MDDSReadingReferenceConnection >> participant: aParticipant [
	participant := aParticipant
]

{ #category : #accessing }
MDDSReadingReferenceConnection >> relatedParticipantName [
	 ^ participant name
]
