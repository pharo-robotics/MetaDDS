"
All remote participant mirrors are related with a proxy. This proxy is meant to be a proxy  adaptor. The idea is to subclass this class, and use a proxy. The used proxy can have what ever it takes and needs to implement the comunicaiton. Meanwhile the adapter proxy(subclass) needs to respond to a known protocol.
"
Class {
	#name : #MDDSAbstractParticipantProxy,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : 'MetaDDS-Proxy'
}

{ #category : #accessing }
MDDSAbstractParticipantProxy >> name [
	^ name
]

{ #category : #accessing }
MDDSAbstractParticipantProxy >> name: aName [
	name := aName
]

{ #category : #printing }
MDDSAbstractParticipantProxy >> printOn: aStream [
	(' Proxy to ', name) printOn: aStream
]
