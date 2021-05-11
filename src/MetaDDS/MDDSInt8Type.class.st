"
A PhaROSInt8Type i is a 8 bits represetnation of int. Also used as byte or char.
"
Class {
	#name : #MDDSInt8Type,
	#superclass : #MDDSBaseTypeMarshaller,
	#category : 'MetaDDS-TypesMarshalling'
}

{ #category : #'pseudo-dsl' }
MDDSInt8Type class >> alterName [
	^ #Int8
]

{ #category : #accessing }
MDDSInt8Type class >> dataTypeSize [
	^1.
]

{ #category : #serialize }
MDDSInt8Type >> decode: aFLDecoder [ 

	^aFLDecoder nextEncodedInt8.
]

{ #category : #testing }
MDDSInt8Type >> isAPossibleValue: aSmallInteger [ 
	^(aSmallInteger isKindOf: Number) and: [ aSmallInteger > -129 and: [ aSmallInteger < 128 ] ].
]

{ #category : #'instance creation' }
MDDSInt8Type >> newInstance [ 
	^ 0.
]

{ #category : #initializing }
MDDSInt8Type >> setEncodeDecodeSelectors [ 
	decodeSelector := #nextEncodedInt8.
	encodeSelector := #encodeInt8:.
	 
	
]

{ #category : #accessing }
MDDSInt8Type >> typeName [ 
	^ 'int8'
]
