"
A MDDSConnection is the reification of a connection in between publisher and subscriber
"
Class {
	#name : #MDDSConnection,
	#superclass : #Object,
	#instVars : [
		'protocol'
	],
	#category : 'MetaDDS-Kernel'
}

{ #category : #accessing }
MDDSConnection >> destroy [
]

{ #category : #accessing }
MDDSConnection >> id [
 	^ self hash asString
]

{ #category : #testing }
MDDSConnection >> isConnected [
	self subclassResponsibility 
]

{ #category : #testing }
MDDSConnection >> isReader [
	^ false
]

{ #category : #testing }
MDDSConnection >> isRemote [
	^ false
]

{ #category : #accessing }
MDDSConnection >> noteIsRegistered [
]

{ #category : #accessing }
MDDSConnection >> protocol [
	^ protocol
]

{ #category : #accessing }
MDDSConnection >> protocol: anObject [
	protocol := anObject
]

{ #category : #accessing }
MDDSConnection >> relatedParticipantName [
	self subclassResponsibility
]
