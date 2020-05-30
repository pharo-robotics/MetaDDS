"
A PhaROSCollectionType is an abstract representation of collections type
"
Class {
	#name : #MDDSCollectionType,
	#superclass : #MDDSBaseTypeMarshaller,
	#instVars : [
		'relatedClass',
		'relatedType'
	],
	#category : 'MetaDDS-TypesMarshalling'
}

{ #category : #'pseudo-dsl' }
MDDSCollectionType class >> registerAlterName [
	" This is an abstract class. Does not apply "
	self = MDDSCollectionType ifFalse: [ 
		super registerAlterName.
	 ]
]

{ #category : #accessing }
MDDSCollectionType >> dataTypeSizeFor: aValue [
self flag: #cambiarEstooo. " "

	(self isAPossibleValue: aValue ) ifFalse: [
		MDDSError signal: 'Unexpected value'.
	].
	
	^(aValue inject: 0 into:[
		:acc :val | 
		acc + (self  relatedType dataTypeSizeFor: val ).
	]).
]

{ #category : #serialize }
MDDSCollectionType >> decode: aDecoder [ 
	^ (1 to: (self sizeFor: aDecoder ) ) collect: [
		:i |
		self relatedType decode: aDecoder.
	] .
]

{ #category : #testing }
MDDSCollectionType >> isAPossibleSize: aSize [
	^ aSize > 0.
]

{ #category : #testing }
MDDSCollectionType >> isAPossibleValue: aValue [
	^( aValue isKindOf: Collection ) and: [
		aValue allSatisfy: [
			:val |
			self relatedType isAPossibleValue: val.
		]	
	].
]

{ #category : #testing }
MDDSCollectionType >> isCollectionType [
	^ true
]

{ #category : #'as yet unclassified' }
MDDSCollectionType >> ofClass: aRosTypeClass [
	relatedClass := aRosTypeClass.
]

{ #category : #'class factory' }
MDDSCollectionType >> ofType: aRosType [
	relatedType  := aRosType.
	relatedClass := aRosType class.
]

{ #category : #accessing }
MDDSCollectionType >> relatedType [
	^ relatedType ifNil: [ relatedType := relatedClass new ].
]

{ #category : #accessing }
MDDSCollectionType >> relatedType: aType [
	relatedType := aType.
	relatedClass := aType class.
	
]

{ #category : #initializing }
MDDSCollectionType >> setEncodeDecodeSelectors [
	" Refactor needed here ."
	encodeSelector := #doesNotApplyHere.
	decodeSelector := #doesNotApplyHere.
]

{ #category : #'instance creation' }
MDDSCollectionType >> sizeFor: aDecoder [ 
	^ self subclassResponsibility.
]
