"
A MDDSWritingReferenceConnection is 
is the reification of the writing connection but based on a reference. Is for local participants
"
Class {
	#name : #MDDSWritingReferenceConnection,
	#superclass : #MDDSWritingConnection,
	#instVars : [
		'link',
		'participant'
	],
	#category : 'MetaDDS-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSWritingReferenceConnection class >> linkedTo: aReadingConnection [
	^ self new link:  aReadingConnection; yourself
]

{ #category : #'as yet unclassified' }
MDDSWritingReferenceConnection class >> subscribing: aSubscription [
	^ self new subscription: aSubscription; yourself
]

{ #category : #testing }
MDDSWritingReferenceConnection >> isConnected [
	^ link isNotNil.
]

{ #category : #testing }
MDDSWritingReferenceConnection >> isDead [
	^ link isNil
]

{ #category : #accessing }
MDDSWritingReferenceConnection >> link: aReadingConnection [
	link := aReadingConnection.
]

{ #category : #accessing }
MDDSWritingReferenceConnection >> participant [
	^ participant
]

{ #category : #accessing }
MDDSWritingReferenceConnection >> participant: aParticipant [
	participant := aParticipant
]

{ #category : #accessing }
MDDSWritingReferenceConnection >> relatedParticipantName [
	 ^ participant name
]

{ #category : #'as yet unclassified' }
MDDSWritingReferenceConnection >> write: aDataValue with: aMarshaller [
	link dispatch: aDataValue.
]
