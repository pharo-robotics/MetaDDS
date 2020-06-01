"
A publication is the reification of the relation in between a participant that publishes and the participatns that consumes the data.

Each publication has n sockets, one per protocol.

"
Class {
	#name : #MDDSPublication,
	#superclass : #Object,
	#instVars : [
		'participant',
		'marshaller',
		'connections',
		'connectionOffer'
	],
	#category : #'MetaDDS-Kernel'
}

{ #category : #constructor }
MDDSPublication class >> publishing: aMDDSDomainParticipant with: aMarshaller [
	^ self new participant: aMDDSDomainParticipant; marshaller: aMarshaller; yourself. 
]

{ #category : #accessing }
MDDSPublication >> connections [
	^ connections
]

{ #category : #accessing }
MDDSPublication >> destroy [
	
]

{ #category : #initialization }
MDDSPublication >> initialize [
	connections := Set new
]

{ #category : #testing }
MDDSPublication >> isPublishing: aMDDSDomainParticipant [
	^ participant = aMDDSDomainParticipant
]

{ #category : #accessing }
MDDSPublication >> log: anError [
	self inform: anError messageText.
]

{ #category : #accessing }
MDDSPublication >> marshaller [
	^ marshaller
]

{ #category : #accessing }
MDDSPublication >> marshaller: aTypeMarshaller [
	marshaller := aTypeMarshaller
]

{ #category : #notifications }
MDDSPublication >> noteIsNotRegisteredAnymore [
	connections do: #destroy.
	connections removeAll.
	marshaller := nil.
	connectionOffer := nil
]

{ #category : #accessing }
MDDSPublication >> noteIsRegisteredIn: aPublisher [
	connectionOffer := MDDSConnectionOffer publisher: aPublisher participant: participant
]

{ #category : #accessing }
MDDSPublication >> participant [
	^ participant
]

{ #category : #accessing }
MDDSPublication >> participant: aMDDSDomainParticipant [
	participant := aMDDSDomainParticipant
]

{ #category : #accessing }
MDDSPublication >> publish: aBlock [
	connections size > 0
		ifTrue: [ 
			| value |
			value := self marshaller newInstance.
			aBlock value: value.
			self publishValue: value ]
]

{ #category : #accessing }
MDDSPublication >> publishValue: aValue [
	| deathConnections |
	deathConnections := Set new.
	connections
		do: [ :writingConnection | 
			[ writingConnection write: aValue with: self marshaller ]
				on: Error
				do: [ :err|
					self log: err. 
					writingConnection isDead
						ifTrue: [ deathConnections add: writingConnection ] ] ].
	connections removeAll: deathConnections
]

{ #category : #accessing }
MDDSPublication >> publishValue: aValue to: aConnection [
	[ aConnection write: aValue with: self marshaller ]
		on: Error
		do: [ :err | 
			self log: err.
			aConnection isDead
				ifTrue: [ connections remove: aConnection ifAbsent: [  ] ] ]
]

{ #category : #registry }
MDDSPublication >> register: aWritingConnection [
	connections add: aWritingConnection.
	
]
