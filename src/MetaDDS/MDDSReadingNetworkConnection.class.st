"
Reading connection is a reification of the socket, with protocol and marshalling in terms of consuming 
"
Class {
	#name : #MDDSReadingNetworkConnection,
	#superclass : #MDDSReadingConnection,
	#instVars : [
		'process',
		'stream',
		'urlrpc',
		'socket',
		'relatedParticipantName',
		'lastLoadedMessage'
	],
	#category : 'MetaDDS-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSReadingNetworkConnection class >> protocol: aProtocol socket: aSocket stream: aStream relatedParticipantName: aRelatedParticipantName [
	^ self new
		protocol: aProtocol;
		socket: aSocket;
		relatedParticipantName: aRelatedParticipantName;
		stream: aStream;
		yourself
]

{ #category : #accessing }
MDDSReadingNetworkConnection >> destroy [
	messageDispatcher noteStop: self.
	messageDispatcher := nil.
	socket ifNotNil: [ socket close ].
	socket := nil.
	stream ifNotNil: [ stream close ].
	stream := nil.
	protocol := nil.
	self stop
]

{ #category : #testing }
MDDSReadingNetworkConnection >> isConnected [
	^ socket isConnected
]

{ #category : #testing }
MDDSReadingNetworkConnection >> isRemote [
	^ true
]

{ #category : #run }
MDDSReadingNetworkConnection >> logDisconnection [
	self traceCr: relatedParticipantName, ' ReadingConnection Thread: Participan has closed the connection'.
]

{ #category : #run }
MDDSReadingNetworkConnection >> logError: anError [
	self traceCr: relatedParticipantName, ' ReadingConnection Thread: ' , anError messageText
]

{ #category : #run }
MDDSReadingNetworkConnection >> logProcessStop [
	self traceCr: relatedParticipantName, ' ReadingConnection Thread: shutting down process'.
]

{ #category : #accessing }
MDDSReadingNetworkConnection >> noteIsRegistered [
	super noteIsRegistered.
	self start.
]

{ #category : #accessing }
MDDSReadingNetworkConnection >> relatedParticipantName [
	 ^ relatedParticipantName
]

{ #category : #accessing }
MDDSReadingNetworkConnection >> relatedParticipantName: aRelatedParticipantName [
	relatedParticipantName := aRelatedParticipantName
]

{ #category : #accessing }
MDDSReadingNetworkConnection >> socket [
	^ socket
]

{ #category : #accessing }
MDDSReadingNetworkConnection >> socket: anObject [
	socket := anObject
]

{ #category : #run }
MDDSReadingNetworkConnection >> spinOnce [
	[ [ lastLoadedMessage := protocol loadStream: stream with: typeMarshaller.
	messageDispatcher dispatch: lastLoadedMessage ]
		on: OutOfMemory , MDDSError
		do: [ :err | 
			messageDispatcher noteError: err.
			self logError: err.
			self destroy ] ]
		on: Error
		do: [ :err | 
			self logError: err.
			socket isConnected
				ifFalse: [ self logDisconnection.
					self destroy ] ]
]

{ #category : #accessing }
MDDSReadingNetworkConnection >> start [
	process := TKTParameterizableService new.
	process onSetUpDo: (MessageSend receiver: self selector: #traceCr: argument: 'DDS System monitor has started').
	process onTearDownDo: (MessageSend receiver: self selector: #logProcessStop).
	process step: (MessageSend receiver: self selector: #spinOnce).
	process name: 'MDDS: Connection reader ', relatedParticipantName, ' ', UUID new asString.
	process start.
	^ self
]

{ #category : #accessing }
MDDSReadingNetworkConnection >> stop [
	| proc |
	proc := process.
	process := nil.
	proc stop.
	^ self
]

{ #category : #accessing }
MDDSReadingNetworkConnection >> stream: aStream [
	stream := aStream.
]

{ #category : #accessing }
MDDSReadingNetworkConnection >> urlrpc [
	^ urlrpc
]

{ #category : #accessing }
MDDSReadingNetworkConnection >> urlrpc: anUrl [
	urlrpc := anUrl.
]
