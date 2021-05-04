"
A PhaROSType is abstract representation of type
"
Class {
	#name : #MDDSBaseTypeMarshaller,
	#superclass : #Object,
	#instVars : [
		'encodeSelector',
		'decodeSelector'
	],
	#category : 'MetaDDS-TypesMarshalling'
}

{ #category : #'pseudo-dsl' }
MDDSBaseTypeMarshaller class >> constant: aTypeName value: aValue [ 
	^ MDDSConstantDefinition name: aTypeName typedAs: self new withValue: aValue.
]

{ #category : #private }
MDDSBaseTypeMarshaller class >> forPhaROSTyping [
	^ self
]

{ #category : #'pseudo-dsl' }
MDDSBaseTypeMarshaller class >> initialize [ 	
	super initialize.
	self = MDDSBaseTypeMarshaller ifFalse: [
		self registerAlterName.
	]
]

{ #category : #'pseudo-dsl' }
MDDSBaseTypeMarshaller class >> registerAlterName [
	Smalltalk at: self alterName put: self.
]

{ #category : #accessing }
MDDSBaseTypeMarshaller >> constantValue: aValue [
	^ aValue.
]

{ #category : #accessing }
MDDSBaseTypeMarshaller >> dataTypeSize [
	^ self class dataTypeSize.
]

{ #category : #accessing }
MDDSBaseTypeMarshaller >> dataTypeSizeFor: aValue [
	^ self dataTypeSize.
]

{ #category : #serialize }
MDDSBaseTypeMarshaller >> decode: aDecoder [

	^ aDecoder perform: decodeSelector.
]

{ #category : #accessing }
MDDSBaseTypeMarshaller >> decodeSelector [ 
	^decodeSelector.
]

{ #category : #accessing }
MDDSBaseTypeMarshaller >> defaultValueString [
	^ self newInstance asString.
]

{ #category : #accessing }
MDDSBaseTypeMarshaller >> encodeSelector [ 
	^ encodeSelector.
]

{ #category : #initialization }
MDDSBaseTypeMarshaller >> initialize [ 
	self setEncodeDecodeSelectors.
]

{ #category : #testing }
MDDSBaseTypeMarshaller >> isAPossibleSize: aSize [
	^ aSize = self dataTypeSize.
]

{ #category : #testing }
MDDSBaseTypeMarshaller >> isAPossibleValue: aValue [
	self subclassResponsibility 
]

{ #category : #testing }
MDDSBaseTypeMarshaller >> isCollectionType [
	^ false
]

{ #category : #'instance creation' }
MDDSBaseTypeMarshaller >> newInstance [
	^ Array new.
]

{ #category : #accessing }
MDDSBaseTypeMarshaller >> serialize:aValue into: anEncoder [
	^ anEncoder perform: encodeSelector with: aValue.
]

{ #category : #initializing }
MDDSBaseTypeMarshaller >> setEncodeDecodeSelectors [
	self subclassResponsibility 
]

{ #category : #accessing }
MDDSBaseTypeMarshaller >> typeName [
	^ self subclassResponsibility 
]
