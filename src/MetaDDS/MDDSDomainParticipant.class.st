"
A MDDSDomainParticipant is an entity that participates in the DDS as writer or reader
"
Class {
	#name : #MDDSDomainParticipant,
	#superclass : #MDDSEntity,
	#instVars : [
		'ip'
	],
	#category : 'MetaDDS-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSDomainParticipant class >> domain: aDomain name: aName ip: anIp [
	^ (super domain: aDomain name: aName) ip: (NetNameResolver addressFromString: anIp); yourself.
]

{ #category : #converting }
MDDSDomainParticipant >> asMirror [
	^ MDDSDomainParticipantMirror domain: self name: self name participant: self
]

{ #category : #accessing }
MDDSDomainParticipant >> ip [
	^ ip
]

{ #category : #accessing }
MDDSDomainParticipant >> ip: anIp [
	ip := anIp.
]

{ #category : #accessing }
MDDSDomainParticipant >> name [
	^( super name beginsWith:'/' ) ifTrue: [ super name ] ifFalse: [ '/', super name ].
]

{ #category : #'as yet unclassified' }
MDDSDomainParticipant >> obtainPortFor: aProtocol [
	^ domain obtainPort.
]

{ #category : #accessing }
MDDSDomainParticipant >> protocols [
	^ domain protocols
]
