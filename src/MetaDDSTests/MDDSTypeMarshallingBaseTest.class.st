Class {
	#name : #MDDSTypeMarshallingBaseTest,
	#superclass : #TestCase,
	#instVars : [
		'validValues',
		'invalidValues',
		'protocol',
		'typeMarshaller'
	],
	#category : 'MetaDDSTests-ProtocolSerializing'
}

{ #category : #'as yet unclassified' }
MDDSTypeMarshallingBaseTest class >> writeTestIfNeed: aSelector [
 | testSelector callSelector | 

	testSelector := 'test', aSelector asString capitalized.
	callSelector := 'base', aSelector asString capitalized.
	
	
	self methodDict at: aSelector ifAbsent: [
		self compile:( '
			{1}
				^ super {2}.
		' translated format: { testSelector . callSelector }).
	].
	"PhaROSTypeMarshallingBaseTest allSubclasses do: #initialize."
	
]

{ #category : #'as yet unclassified' }
MDDSTypeMarshallingBaseTest >> baseFailSerialize [

	invalidValues do: [
			:val |
			self should:[ protocol load: val with: typeMarshaller ]  raise: Error.
		].
	
]

{ #category : #'as yet unclassified' }
MDDSTypeMarshallingBaseTest >> baseSerialize [
		validValues do: [
			:val |
"			self assert: (protocol dump: val key) size = ((val key type dataTypeSizeFor: val key value) + 4)."
			self assert: (protocol dump: val key with: typeMarshaller) = val value.

		].
	
]

{ #category : #'as yet unclassified' }
MDDSTypeMarshallingBaseTest >> baseUnserialize [

	validValues do: [
		:val |
		self assert: ((protocol load: val value with: typeMarshaller ) value closeTo: val key value).
	].
	


	
	
		
]

{ #category : #'as yet unclassified' }
MDDSTypeMarshallingBaseTest >> baseUnserializeFail [
	
	self invalidByteArrays do: [
		:val |
		self should: [(protocol load: val with: typeMarshaller )] raise: Error.
	].
	
]

{ #category : #accessing }
MDDSTypeMarshallingBaseTest >> expectedSize [
	^ self relatedClass dataTypeSize.
]

{ #category : #'as yet unclassified' }
MDDSTypeMarshallingBaseTest >> invalidByteArrays [
	self subclassResponsibility.
]

{ #category : #'as yet unclassified' }
MDDSTypeMarshallingBaseTest >> invalidValues [ 
	self subclassResponsibility.
]

{ #category : #'as yet unclassified' }
MDDSTypeMarshallingBaseTest >> newTestedClassInstance [
	^ self relatedClass new.
]

{ #category : #'as yet unclassified' }
MDDSTypeMarshallingBaseTest >> relatedClass [
	^ self subclassResponsibility.
]

{ #category : #'as yet unclassified' }
MDDSTypeMarshallingBaseTest >> setUp [
	super setUp.
	MDDSTimestamp initialize.
	typeMarshaller := self newTestedClassInstance.
	protocol := MDDSProtocol encoding: MDDSEncoder decoding: MDDSDecoder.
	
	validValues := self validValues." collect: [
		:assoc |
		(self newTestedClassInstance newPacket value: assoc key; yourself  )-> assoc value.
	].
"
	invalidValues := self invalidValues.  "collect: [
		:value |
		self newTestedClassInstance newPacket value: value ; yourself.
	]."
	
	

	








]

{ #category : #'as yet unclassified' }
MDDSTypeMarshallingBaseTest >> validValues [ 
	self subclassResponsibility.
]
