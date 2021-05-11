"
part of the dds architecutre includes a petition for connection, and, as well, support to several kind of IP based protocols
"
Class {
	#name : #MDDSConnectionPetition,
	#superclass : #MDDSTopicConnectionDescription,
	#instVars : [
		'protocolName',
		'ip',
		'port'
	],
	#category : 'MetaDDS-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSConnectionPetition class >> protocolName: aName ip: anIp port: aPort subscriber: aSubscriber participant: aParticipantMirror [ 
	^ self new protocolName: aName; ip: anIp; port: aPort; topicInteractor: aSubscriber; participant: aParticipantMirror ;yourself 
]

{ #category : #'as yet unclassified' }
MDDSConnectionPetition >> createConnectionFor: aProtocol on: aSocket and: aStream for: aParticipantName [
	^ MDDSReadingNetworkConnection
		protocol: aProtocol
		socket: aSocket
		stream: aStream
		relatedParticipantName: aParticipantName
]

{ #category : #accessing }
MDDSConnectionPetition >> ip [
	^ ip
]

{ #category : #accessing }
MDDSConnectionPetition >> ip: anIPOrHostName [
	ip := anIPOrHostName 
]

{ #category : #'as yet unclassified' }
MDDSConnectionPetition >> itIsSupportedBy: aProtocol [
	^ aProtocol name = protocolName
]

{ #category : #accessing }
MDDSConnectionPetition >> port [
	^ port
]

{ #category : #accessing }
MDDSConnectionPetition >> port: aPort [
	port := aPort.
]

{ #category : #accessing }
MDDSConnectionPetition >> protocolName [
	^ protocolName
]

{ #category : #accessing }
MDDSConnectionPetition >> protocolName: aName [
	protocolName := aName.
	
]
