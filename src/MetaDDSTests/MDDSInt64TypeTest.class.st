Class {
	#name : #MDDSInt64TypeTest,
	#superclass : #MDDSTypeMarshallingBaseTest,
	#category : 'MetaDDSTests-ProtocolSerializing'
}

{ #category : #'as yet unclassified' }
MDDSInt64TypeTest >> invalidByteArrays [
	^ {
		 #[] .
		 '#[]' asByteArray .
		#[ 0 0 0 0 0 0 0 0 0].
		18446744073709551616 asByteArray 
	}.
]

{ #category : #'as yet unclassified' }
MDDSInt64TypeTest >> invalidValues [ 
	^ {
		'a string' .  9223372036854775808 . -9223372036854775809
	}.


]

{ #category : #'as yet unclassified' }
MDDSInt64TypeTest >> relatedClass [
	^ MDDSInt64Type.
]

{ #category : #'as yet unclassified' }
MDDSInt64TypeTest >> testFailSerialize [
				^ super baseFailSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSInt64TypeTest >> testSerialize [
				^ super baseSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSInt64TypeTest >> testUnserialize [
				^ super baseUnserialize.
		
]

{ #category : #'as yet unclassified' }
MDDSInt64TypeTest >> testUnserializeFail [
				^ super baseUnserializeFail.
		
]

{ #category : #'as yet unclassified' }
MDDSInt64TypeTest >> validValues [ 
	^ {
		1 -> #[ 8 0 0 0  1 0 0 0 0 0 0 0] .
		0 -> #[ 8 0 0 0  0 0 0 0 0 0 0 0 ] .
		250 -> #[8 0 0 0  250 0 0 0 0 0 0 0 ].
		275 -> #[ 8 0 0 0   19 1 0 0 0 0 0 0 ].
		65535 -> #[ 8 0 0 0  255 255 0 0 0 0 0 0  ].
		4294967295 -> #[ 8 0 0 0  255 255 255 255 0 0 0 0 ].
		
		9223372036854775807 -> #[ 8 0 0 0  255 255 255 255 255 255 255 127 ].
		-9223372036854775808 -> #[ 8 0 0 0  0 0 0 0 0 0 0 128 ].
		-1 -> #[8 0 0 0  255 255 255 255 255 255 255 255].
	}.
	
]
