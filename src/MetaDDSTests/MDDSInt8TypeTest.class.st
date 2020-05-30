Class {
	#name : #MDDSInt8TypeTest,
	#superclass : #MDDSTypeMarshallingBaseTest,
	#category : 'MetaDDSTests-ProtocolSerializing'
}

{ #category : #'as yet unclassified' }
MDDSInt8TypeTest >> invalidByteArrays [ 
	^ {
		#[25 6] . #[ 10 10 ] . 'anString' asByteArray 
	}.

]

{ #category : #'as yet unclassified' }
MDDSInt8TypeTest >> invalidValues [ 
	^ {
		128 . 256 . 'a string' . -129
	}.

]

{ #category : #'as yet unclassified' }
MDDSInt8TypeTest >> relatedClass [
	^ MDDSInt8Type.
]

{ #category : #'as yet unclassified' }
MDDSInt8TypeTest >> testFailSerialize [
				^ super baseFailSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSInt8TypeTest >> testSerialize [
				^ super baseSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSInt8TypeTest >> testUnserialize [
				^ super baseUnserialize.
		
]

{ #category : #'as yet unclassified' }
MDDSInt8TypeTest >> testUnserializeFail [
				^ super baseUnserializeFail.
		
]

{ #category : #'as yet unclassified' }
MDDSInt8TypeTest >> validValues [ 
	^
	{
		-128 -> #[ 1 0 0 0  128 ].
		-1 -> #[1  0 0 0  255 ]. 
		0 ->  #[ 1 0 0 0  0 ] .
		127 ->  #[ 1 0 0 0  127 ] .
	} .
]
