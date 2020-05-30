"
A PhaROSStringType is a variable length string type
"
Class {
	#name : #MDDSStringType,
	#superclass : #MDDSBaseTypeMarshaller,
	#category : 'MetaDDS-TypesMarshalling'
}

{ #category : #'pseudo-dsl' }
MDDSStringType class >> registerAlterName [
	" Name collision. DSL constructor name is at String class as extention method "
]

{ #category : #accessing }
MDDSStringType >> constantValue: aValue [ 
	| realValue | 

	realValue := aValue copyReplaceAll: $' asString with:($' asString, $' asString).
	
	^  $' asString , realValue, $' asString.
	
]

{ #category : #accessing }
MDDSStringType >> dataTypeSize [
	^ 2048.
]

{ #category : #accessing }
MDDSStringType >> dataTypeSizeFor: aValue [
	(self isAPossibleValue: aValue ) ifFalse: [
		self error: 'Unexpected value'.
	].
	^ aValue size + 4.
]

{ #category : #accessing }
MDDSStringType >> defaultValueString [ 
	^ $' asString, $' asString. 
]

{ #category : #testing }
MDDSStringType >> isAPossibleSize: aSize [
	^ aSize > 0.
]

{ #category : #testing }
MDDSStringType >> isAPossibleValue: aByteString [ 
	^ aByteString isKindOf: ByteString.
]

{ #category : #'instance creation' }
MDDSStringType >> newInstance [ 
	^ ''. 
]

{ #category : #initializing }
MDDSStringType >> setEncodeDecodeSelectors [
	encodeSelector := #encodeString:.
	decodeSelector := #nextEncodedString.
]

{ #category : #accessing }
MDDSStringType >> typeName [ 
	^ 'string'
]
