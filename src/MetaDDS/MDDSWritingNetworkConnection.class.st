"
a writing connection puts together socket protocol and eventually, marshaller (since the marshaller is the same for each topic actor, is not accessed here, but received just in time) 


"
Class {
	#name : #MDDSWritingNetworkConnection,
	#superclass : #MDDSWritingConnection,
	#instVars : [
		'socket',
		'relatedParticipantName'
	],
	#category : #'MetaDDS-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSWritingNetworkConnection class >> with: aProtocol for: aSocket representing: aRelatedParticipantName [
	^ self new protocol: aProtocol ; socket: aSocket; relatedParticipantName: aRelatedParticipantName; yourself
]

{ #category : #accessing }
MDDSWritingNetworkConnection >> destroy [
	socket close.
]

{ #category : #testing }
MDDSWritingNetworkConnection >> isConnected [
	^ socket isConnected
]

{ #category : #testing }
MDDSWritingNetworkConnection >> isDead [
	^ socket isNil or: [ socket isConnected not ]
]

{ #category : #testing }
MDDSWritingNetworkConnection >> isRemote [
	^ true
]

{ #category : #accessing }
MDDSWritingNetworkConnection >> relatedParticipantName [
	 ^ relatedParticipantName
]

{ #category : #accessing }
MDDSWritingNetworkConnection >> relatedParticipantName: aRelatedParticipantName [
	relatedParticipantName := aRelatedParticipantName
]

{ #category : #accessing }
MDDSWritingNetworkConnection >> socket [
	^ socket
]

{ #category : #accessing }
MDDSWritingNetworkConnection >> socket: anObject [
	socket := anObject
]

{ #category : #accessing }
MDDSWritingNetworkConnection >> urlrpc [
	^ ''
]

{ #category : #'as yet unclassified' }
MDDSWritingNetworkConnection >> write: aDataValue with: aMarshaller [
	" there are several scenarios where the data is not much per cycle and is sent several times per second. For this cases (sensors) having a batched writing may  be a great enhancement "

	self flag: #performance. 
	socket sendData: (protocol dump: aDataValue with: aMarshaller).
	newComer := false .
]
