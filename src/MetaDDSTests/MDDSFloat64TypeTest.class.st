Class {
	#name : #MDDSFloat64TypeTest,
	#superclass : #MDDSTypeMarshallingBaseTest,
	#category : 'MetaDDSTests-ProtocolSerializing'
}

{ #category : #'as yet unclassified' }
MDDSFloat64TypeTest >> expectedFailures [
	" Must be implemented first "
	^#(
		testFailSerialize		
		testSerialize
		testUnserialize 
		testUnserializeFail 
	)
]

{ #category : #'as yet unclassified' }
MDDSFloat64TypeTest >> testFailSerialize [
				^ super baseFailSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSFloat64TypeTest >> testSerialize [
				^ super baseSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSFloat64TypeTest >> testUnserialize [
				^ super baseUnserialize.
		
]

{ #category : #'as yet unclassified' }
MDDSFloat64TypeTest >> testUnserializeFail [
				^ super baseUnserializeFail.
		
]
