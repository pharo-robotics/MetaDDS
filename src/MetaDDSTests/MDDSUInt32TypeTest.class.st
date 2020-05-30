Class {
	#name : #MDDSUInt32TypeTest,
	#superclass : #MDDSTypeMarshallingBaseTest,
	#category : 'MetaDDSTests-ProtocolSerializing'
}

{ #category : #'as yet unclassified' }
MDDSUInt32TypeTest >> invalidByteArrays [
	^ {
		 #[] .
		 '#[]' asByteArray .
		#[ 0 0 0 0 0 ]
	}.
]

{ #category : #'as yet unclassified' }
MDDSUInt32TypeTest >> invalidValues [ 
	^ {
		-128 .   'a string' .  -1 . 4294967296
	}.

]

{ #category : #'as yet unclassified' }
MDDSUInt32TypeTest >> relatedClass [
	^ MDDSUInt32Type.
]

{ #category : #'as yet unclassified' }
MDDSUInt32TypeTest >> testFailSerialize [
				^ super baseFailSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSUInt32TypeTest >> testSerialize [
				^ super baseSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSUInt32TypeTest >> testUnserialize [
				^ super baseUnserialize.
		
]

{ #category : #'as yet unclassified' }
MDDSUInt32TypeTest >> testUnserializeFail [
				^ super baseUnserializeFail.
		
]

{ #category : #'as yet unclassified' }
MDDSUInt32TypeTest >> validValues [ 
	^ {
		1 -> #[ 4 0 0 0 1 0 0 0 ] .
		0 -> #[ 4 0 0 0 0 0 0 0 ] .
		250 -> #[ 4 0 0 0 250 0 0 0 ].
		275 -> #[ 4 0 0 0   19 1 0 0 ].
		65535 -> #[ 4 0 0 0 255 255 0 0  ].
		4294967295 -> #[ 4 0 0 0 255 255 255 255].
	}.
]
