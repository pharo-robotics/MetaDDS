"
Some times the topic has not a type because the user  do not know it. In this cases, the topic will be configured with a TypePlaceHolder. This is a place holder for the type.  And during the first connection the topic should be informed and inform to the type holder in order to become it a real type. 
"
Class {
	#name : #MDDSTypePlaceHolder,
	#superclass : #MDDSEntity,
	#instVars : [
		'md5sum'
	],
	#category : 'MetaDDS-Kernel'
}

{ #category : #converting }
MDDSTypePlaceHolder >> asType [
	^ self 
]

{ #category : #testing }
MDDSTypePlaceHolder >> isTypePlaceHolder [
	^ true 
]

{ #category : #testing }
MDDSTypePlaceHolder >> isUndefined [
	^ name ~= MDDSTypeDescriptor unknownWildcard
]

{ #category : #accessing }
MDDSTypePlaceHolder >> md5sum [
	^ md5sum ifNil: ''
]

{ #category : #accessing }
MDDSTypePlaceHolder >> plainDefinition [
	^ ''
]

{ #category : #'as yet unclassified' }
MDDSTypePlaceHolder >> resolveRealTypeFrom: aHeader [
	^ domain
		createTypeNamed: name
		definedBy: (domain loadTypeDefinitionNamed: name definedFromString: aHeader message_definition)
]

{ #category : #accessing }
MDDSTypePlaceHolder >> verify: aTypeName md5: aMd5Sum [
	(self isUndefined and: [ name = aTypeName ])
		ifTrue: [ self assert: name equals: aTypeName ]
		ifFalse: [ name := aTypeName ].
	md5sum := aMd5Sum.
	^ true
]
