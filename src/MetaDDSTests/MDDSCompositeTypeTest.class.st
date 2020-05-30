Class {
	#name : #MDDSCompositeTypeTest,
	#superclass : #MDDSTypeMarshallingBaseTest,
	#instVars : [
		'testedType'
	],
	#category : 'MetaDDSTests-ProtocolSerializing'
}

{ #category : #'as yet unclassified' }
MDDSCompositeTypeTest >> invalidByteArrays [
	^ {
		 #[] .
		 '#[]' asByteArray .
		#[ 0 0 0].
		#[ 0 0 0 0] .
		#[ 0 0 0 0 0 0 0] .
		65536 asByteArray 
	}.
]

{ #category : #'as yet unclassified' }
MDDSCompositeTypeTest >> invalidValues [ 
	^ {
		-128 .   'a string' .  -1 . 4294967296 . (Duration seconds: 4294967298) 
	}.

]

{ #category : #'as yet unclassified' }
MDDSCompositeTypeTest >> newTestedClassInstance [
	^ typeMarshaller
]

{ #category : #'as yet unclassified' }
MDDSCompositeTypeTest >> relatedClass [ 
	^ MDDSCompositeType.
]

{ #category : #'as yet unclassified' }
MDDSCompositeTypeTest >> setUp [ 

	
	typeMarshaller := (MDDSTypeDefinition named: 'testedType' defined: { 
				MDDSFieldDefinition name: #float32 type: (MDDSBasicTypeDefinition for: MDDSFloat32Type new) .
				MDDSFieldDefinition name: #int32 type: (MDDSBasicTypeDefinition for: MDDSInt32Type new) .
				MDDSFieldDefinition name: #int8 type: (MDDSBasicTypeDefinition for: MDDSInt8Type new) .
				MDDSFieldDefinition name: #uint64Array type: (MDDSBasicTypeDefinition for: (MDDSArrayType of: MDDSUInt64Type )) .
				MDDSFieldDefinition name: #int64FixedArray type: (MDDSBasicTypeDefinition for: (MDDSArrayFixedLenghtType of: 3 of: MDDSInt64Type )) 

			}) typeBuilder buildTypeMarshaller.

	protocol := MDDSProtocol encoding: MDDSEncoder decoding: MDDSDecoder.
	
	validValues := self validValues "collect: [
		:assoc |
		(self newTestedClassInstance newPacket value: assoc key; yourself  )-> assoc value.
	]".

	invalidValues := self invalidValues "collect: [
		:value |
		self newTestedClassInstance newPacket value: value ; yourself.
	]".
	
	

	
]

{ #category : #'as yet unclassified' }
MDDSCompositeTypeTest >> tearDown [
	(Smalltalk at:#TestedType) removeFromSystem .
]

{ #category : #'as yet unclassified' }
MDDSCompositeTypeTest >> testFailSerialize [
	^ super baseFailSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSCompositeTypeTest >> testSerialize [
	^ super baseSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSCompositeTypeTest >> testUnserialize [
	^ super baseUnserialize.
		
]

{ #category : #'as yet unclassified' }
MDDSCompositeTypeTest >> testUnserializeFail [
	^ super baseUnserializeFail.
		
]

{ #category : #'as yet unclassified' }
MDDSCompositeTypeTest >> validValues [ 	
	
	| instance |
	
	
	^{
		(typeMarshaller newInstance float32: 2.0; int32: 1; int8: -1; uint64Array: { 0 . 0 };  int64FixedArray: { -1 . 0 . 1 }; yourself ) -> 
		#[53 0 0 0 0 0 0 64 1 0 0 0 255 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0]
	
	}
]
