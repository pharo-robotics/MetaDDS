Class {
	#name : #MDDSArrayTypeTest,
	#superclass : #MDDSTypeMarshallingBaseTest,
	#category : 'MetaDDSTests-ProtocolSerializing'
}

{ #category : #'as yet unclassified' }
MDDSArrayTypeTest >> invalidByteArrays [
	^ {
		 #[] .
		 '#[]' asByteArray .
		#[ 0 0 0].
		#[ 0 0 0 0] .
		65536 asByteArray  .
		32768 asByteArray 
	}.
]

{ #category : #'as yet unclassified' }
MDDSArrayTypeTest >> invalidValues [ 
	^ {
		 65536 . 'a string' .   32768 . -32769 . {-32769} .  { 32768 } .  { 'str' } 
	}.

]

{ #category : #'as yet unclassified' }
MDDSArrayTypeTest >> newTestedClassInstance [
	^ self relatedClass of: MDDSInt16Type.
]

{ #category : #'as yet unclassified' }
MDDSArrayTypeTest >> relatedClass [
	^MDDSArrayType 
]

{ #category : #'as yet unclassified' }
MDDSArrayTypeTest >> testFailSerialize [
				^ super baseFailSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSArrayTypeTest >> testSerialize [
				^ super baseSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSArrayTypeTest >> testUnserialize [
				^ super baseUnserialize.
		
]

{ #category : #'as yet unclassified' }
MDDSArrayTypeTest >> testUnserializeFail [
				^ super baseUnserializeFail.
		
]

{ #category : #'as yet unclassified' }
MDDSArrayTypeTest >> validValues [ 
	^ {
		{ 32767 } -> #[ 6 0 0 0 1 0 0 0 255 127 ] .
		{ -1 } -> #[ 6 0 0 0 1 0 0 0 255 255 ] .
		{ -32767 } -> #[ 6 0 0 0 1 0 0 0 1 128 ] .
		{ 1 } -> #[ 6 0 0 0 1 0 0 0 1 0 ] .		
		{ 0 } -> #[ 6 0 0 0 1 0 0 0 0 0 ] .
		
	 	{ 1 . 0 } -> #[ 8 0 0 0 2 0 0 0 1 0 0 0 ] .
		{ 0 . 1 } -> #[ 8 0 0 0 2 0 0 0 0 0 1 0 ] .
		
		{ 32767 . -32767 . -1 } -> #[  10 0 0 0 3 0 0 0 255 127 1 128  255 255].
	}.

]
