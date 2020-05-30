Class {
	#name : #MDDSInt32TypeTest,
	#superclass : #MDDSTypeMarshallingBaseTest,
	#category : 'MetaDDSTests-ProtocolSerializing'
}

{ #category : #'as yet unclassified' }
MDDSInt32TypeTest >> invalidByteArrays [
	^ {
		 #[] .
		 '#[]' asByteArray .
		#[ 0 0 0 0 0 ]
	}.
]

{ #category : #'as yet unclassified' }
MDDSInt32TypeTest >> invalidValues [ 
	^ {
		'a string' .   2147483648
	}.

]

{ #category : #'as yet unclassified' }
MDDSInt32TypeTest >> relatedClass [
	^ MDDSInt32Type.
]

{ #category : #'as yet unclassified' }
MDDSInt32TypeTest >> testFailSerialize [
				^ super baseFailSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSInt32TypeTest >> testSerialize [
				^ super baseSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSInt32TypeTest >> testUnserialize [
				^ super baseUnserialize.
		
]

{ #category : #'as yet unclassified' }
MDDSInt32TypeTest >> testUnserializeFail [
				^ super baseUnserializeFail.
		
]

{ #category : #'as yet unclassified' }
MDDSInt32TypeTest >> validValues [ 
	^ {
		1 -> #[ 4 0 0 0 1 0 0 0 ] .
		0 -> #[ 4 0 0 0 0 0 0 0 ] .
		250 -> #[ 4 0 0 0 250 0 0 0 ].
		275 -> #[ 4 0 0 0   19 1 0 0 ].
		65535 -> #[ 4 0 0 0 255 255 0 0  ].
		2147483647 -> #[ 4 0 0 0 255 255 255 127  ].
		-2147483648 -> #[ 4 0 0 0 0    0     0     128  ].
		-1 -> #[ 4 0 0 0 255 255 255 255].
	}.
	

]
