"
A publisher  subscriber protocol is based on the sharing and publication of types. This type represent the type idea, but not it definition or it marshaller. 


"
Class {
	#name : #MDDSTypeDescriptor,
	#superclass : #MDDSEntity,
	#instVars : [
		'definition'
	],
	#category : 'MetaDDS-Reflection'
}

{ #category : #'as yet unclassified' }
MDDSTypeDescriptor class >> isUnknown: aTypeDescriptor [
	^ self unknownWildcard = aTypeDescriptor name
]

{ #category : #'as yet unclassified' }
MDDSTypeDescriptor class >> unknownTypeFor: aDomain [
	^ super domain: aDomain name: self unknownWildcard.
]

{ #category : #'as yet unclassified' }
MDDSTypeDescriptor class >> unknownWildcard [
	^ #*
]

{ #category : #converting }
MDDSTypeDescriptor >> asType [
	^ self createType.
]

{ #category : #'as yet unclassified' }
MDDSTypeDescriptor >> createType [

	^ (self isUnknown or: [ self isUndefined ])
		ifTrue: [domain createTypePlaceHolder: name asString ]
		ifFalse: [ domain createTypeNamed: name asString definedBy: self definition ]
]

{ #category : #accessing }
MDDSTypeDescriptor >> definition [
	^ definition ifNil: [ definition := domain typeDefinition: name ]
]

{ #category : #'as yet unclassified' }
MDDSTypeDescriptor >> describes: aType [
	^ name = aType name.
]

{ #category : #testing }
MDDSTypeDescriptor >> isUndefined [
	^  (domain isTypeDefined: name) not 
]

{ #category : #testing }
MDDSTypeDescriptor >> isUnknown [
	^ self class isUnknown: self
]
