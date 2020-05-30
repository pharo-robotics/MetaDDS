Class {
	#name : #MDDSArrayFixedTypeTest,
	#superclass : #MDDSTypeMarshallingBaseTest,
	#category : 'MetaDDSTests-ProtocolSerializing'
}

{ #category : #'as yet unclassified' }
MDDSArrayFixedTypeTest >> invalidByteArrays [
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
MDDSArrayFixedTypeTest >> invalidValues [ 
	^ {
		 65536 . 'a string' .   32768 . -32769 . {-32769} .  { 32768 } .  { 'str' } . { 3220 } . { 32 . 45 . 3 . 3} . { 32 . 45 . 3  }
	}.

]

{ #category : #'as yet unclassified' }
MDDSArrayFixedTypeTest >> newTestedClassInstance [
	^ self relatedClass of:2 of: MDDSInt16Type.
]

{ #category : #'as yet unclassified' }
MDDSArrayFixedTypeTest >> relatedClass [
	^MDDSArrayFixedLenghtType
]

{ #category : #'as yet unclassified' }
MDDSArrayFixedTypeTest >> testFailSerialize [
				^ super baseFailSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSArrayFixedTypeTest >> testSerialize [
				^ super baseSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSArrayFixedTypeTest >> testUnserialize [
	^ super baseUnserialize.
		
]

{ #category : #'as yet unclassified' }
MDDSArrayFixedTypeTest >> testUnserializeFail [
				^ super baseUnserializeFail.
		
]

{ #category : #'as yet unclassified' }
MDDSArrayFixedTypeTest >> validValues [ 
	^ {
		
	 	{ 1 . 0 } -> #[ 4 0 0 0 1 0 0 0 ] .
		{ 0 . 1 } -> #[ 4 0 0 0 0 0 1 0 ] .
		
		{ 32767 . -1} -> #[  4 0 0 0 255 127  255 255].
	}.

]
