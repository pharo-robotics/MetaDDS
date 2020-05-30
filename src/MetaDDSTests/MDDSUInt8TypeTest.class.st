Class {
	#name : #MDDSUInt8TypeTest,
	#superclass : #MDDSTypeMarshallingBaseTest,
	#category : 'MetaDDSTests-ProtocolSerializing'
}

{ #category : #'as yet unclassified' }
MDDSUInt8TypeTest >> invalidByteArrays [ 
	^ {
		#[25 6 ] . #[ 10 10 ] . 'anString' asByteArray 
	}.

]

{ #category : #'as yet unclassified' }
MDDSUInt8TypeTest >> invalidValues [ 
	^ {
		-128 . 256 . 'a string' .  -1 
	}.

]

{ #category : #'as yet unclassified' }
MDDSUInt8TypeTest >> relatedClass [
	^ MDDSUInt8Type 
]

{ #category : #'as yet unclassified' }
MDDSUInt8TypeTest >> testFailSerialize [
				^ super baseFailSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSUInt8TypeTest >> testSerialize [
				^ super baseSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSUInt8TypeTest >> testUnserialize [
				^ super baseUnserialize.
		
]

{ #category : #'as yet unclassified' }
MDDSUInt8TypeTest >> testUnserializeFail [
				^ super baseUnserializeFail.
		
]

{ #category : #'as yet unclassified' }
MDDSUInt8TypeTest >> validValues [ 
	^
	{
		255 -> #[ 1 0 0 0 255 ]. 
		128 -> #[ 1 0 0 0 128 ]. 
		0 ->  #[ 1 0 0 0 0 ] .
		127 ->  #[ 1 0 0 0 127 ] .
	} .
]
