Class {
	#name : #MDDSBoolTypeTest,
	#superclass : #MDDSTypeMarshallingBaseTest,
	#category : 'MetaDDSTests-ProtocolSerializing'
}

{ #category : #'as yet unclassified' }
MDDSBoolTypeTest >> invalidByteArrays [ 
	^ {
		#[25 6] . #[ 10 10 ] . 'anString' asByteArray 
	}.
]

{ #category : #'as yet unclassified' }
MDDSBoolTypeTest >> invalidValues [ 
	^ { True . False . 'anString' }.
	 
]

{ #category : #'as yet unclassified' }
MDDSBoolTypeTest >> relatedClass [
	^ MDDSBoolType.
]

{ #category : #'as yet unclassified' }
MDDSBoolTypeTest >> testFailSerialize [
				^ super baseFailSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSBoolTypeTest >> testSerialize [
	^ super baseSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSBoolTypeTest >> testUnserialize [
				^ super baseUnserialize.
		
]

{ #category : #'as yet unclassified' }
MDDSBoolTypeTest >> testUnserializeFail [
				^ super baseUnserializeFail.
		
]

{ #category : #'as yet unclassified' }
MDDSBoolTypeTest >> validValues [ 
	^
	{
		true ->   #[ 1 0 0 0 1 ] .
		false ->  #[ 1 0 0 0 0 ] .
	} 
]
