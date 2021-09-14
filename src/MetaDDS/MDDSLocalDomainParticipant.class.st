Class {
	#name : #MDDSLocalDomainParticipant,
	#superclass : #MDDSEntity,
	#category : #'MetaDDS-Kernel'
}

{ #category : #converting }
MDDSLocalDomainParticipant >> asMirror [
	^ MDDSDomainParticipantMirror domain: self name: self name participant: self
]

{ #category : #converting }
MDDSLocalDomainParticipant >> name [
	^( super name beginsWith:'/' ) ifTrue: [ super name ] ifFalse: [ '/', super name ].
]
