Class {
	#name : #MDDSInt16TypeTest,
	#superclass : #MDDSTypeMarshallingBaseTest,
	#category : 'MetaDDSTests-ProtocolSerializing'
}

{ #category : #'as yet unclassified' }
MDDSInt16TypeTest >> invalidByteArrays [
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
MDDSInt16TypeTest >> invalidValues [ 
	^ {
		 65536 . 'a string' .   32768 . -32769
	}.

]

{ #category : #'as yet unclassified' }
MDDSInt16TypeTest >> relatedClass [
	^ MDDSInt16Type.
]

{ #category : #'as yet unclassified' }
MDDSInt16TypeTest >> testFailSerialize [
				^ super baseFailSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSInt16TypeTest >> testSerialize [
				^ super baseSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSInt16TypeTest >> testUnserialize [
				^ super baseUnserialize.
		
]

{ #category : #'as yet unclassified' }
MDDSInt16TypeTest >> testUnserializeFail [
				^ super baseUnserializeFail.
		
]

{ #category : #'as yet unclassified' }
MDDSInt16TypeTest >> validValues [ 
	^ {
		1 -> #[ 2 0 0 0 1 0 ] .
		0 -> #[ 2 0 0 0 0 0 ] .
		250 -> #[ 2 0 0 0 250 0 ].
		275 -> #[ 2 0 0 0 19 1].
		32767 -> #[ 2 0 0 0 255 127].
		-1 -> #[ 2 0 0 0 255 255]. 
		-32767 -> #[ 2 0 0 0 1 128].
		-32768 -> #[ 2 0 0 0 0 128].
	}.
]
