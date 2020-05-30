Class {
	#name : #MDDSStringTypeTest,
	#superclass : #MDDSTypeMarshallingBaseTest,
	#category : 'MetaDDSTests-ProtocolSerializing'
}

{ #category : #'as yet unclassified' }
MDDSStringTypeTest >> invalidByteArrays [
	^ {
		 #[] .
		#[ 0 ].
		#[ 0 0 ].
		#[ 0 0 0 ].
	}.
]

{ #category : #'as yet unclassified' }
MDDSStringTypeTest >> invalidValues [ 
	^ {
		-128 . self 
	}.

]

{ #category : #'as yet unclassified' }
MDDSStringTypeTest >> relatedClass [
	^ MDDSStringType.
]

{ #category : #'as yet unclassified' }
MDDSStringTypeTest >> testFailSerialize [
				^ super baseFailSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSStringTypeTest >> testSerialize [
				^ super baseSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSStringTypeTest >> testUnserialize [
				^ super baseUnserialize.
		
]

{ #category : #'as yet unclassified' }
MDDSStringTypeTest >> testUnserializeFail [
				^ super baseUnserializeFail.
		
]

{ #category : #'as yet unclassified' }
MDDSStringTypeTest >> validValues [ 
	^ {
		'1' -> #[ 5 0 0 0 1 0 0 0 49 ] .
		'0' -> #[ 5 0 0 0 1 0 0 0 48] .
		'hello world' -> #[ 15 0 0 0 11 0 0 0 104 101 108 108 111 32 119 111 114 108 100] .
		'A' -> #[5 0 0 0 1 0 0 0 65] .
	}.
	
 
]
