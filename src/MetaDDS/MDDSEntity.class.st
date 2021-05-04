"
Any entity that has to do with the domain, has a domain and name for sure. 
"
Class {
	#name : #MDDSEntity,
	#superclass : #Object,
	#instVars : [
		'domain',
		'name'
	],
	#category : 'MetaDDS-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSEntity class >> domain: aDomain name: aName [
	^ self new name: aName ; domain: aDomain; yourself.
]

{ #category : #'as yet unclassified' }
MDDSEntity class >> named: aName [
	^ self new name: aName ;yourself.
]

{ #category : #converting }
MDDSEntity >> asString [
	^ self class name,  '  ', name.
]

{ #category : #accessing }
MDDSEntity >> destroy [
	
]

{ #category : #accessing }
MDDSEntity >> domain [
	^ domain
]

{ #category : #accessing }
MDDSEntity >> domain: aDDSDomain [
	domain := aDDSDomain.
]

{ #category : #accessing }
MDDSEntity >> name [
	^ name
]

{ #category : #accessing }
MDDSEntity >> name: aTopicName [
	name := aTopicName.
]

{ #category : #printing }
MDDSEntity >> printOn: aStream [
	self asString printOn: aStream
]
