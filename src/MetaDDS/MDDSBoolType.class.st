"
A PhaROSBoolType is a bool type. 
"
Class {
	#name : #MDDSBoolType,
	#superclass : #MDDSBaseTypeMarshaller,
	#category : 'MetaDDS-TypesMarshalling'
}

{ #category : #'pseudo-dsl' }
MDDSBoolType class >> alterName [
	^ #Bool
]

{ #category : #serialize }
MDDSBoolType class >> dataTypeSize [ 
	^ 1
]

{ #category : #serialize }
MDDSBoolType class >> unserialize: aByteArray [ 
	self shouldBeImplemented.
]

{ #category : #serialize }
MDDSBoolType >> decode: aFLDecoder [ 
	| val |	
	val := aFLDecoder nextEncodedByte.
	val = 0 ifTrue: [
		^ false.	
	].
	val = 1 ifTrue: [
		^ true.	
	].
	
	self signal: 'Unexpected value'.
]

{ #category : #testing }
MDDSBoolType >> isAPossibleValue: aBoolean [
	^ {true, false} includes: aBoolean
]

{ #category : #'instance creation' }
MDDSBoolType >> newInstance [ 
	^ false.
]

{ #category : #initializing }
MDDSBoolType >> setEncodeDecodeSelectors [ 
	decodeSelector := #nextEncodedBoolean.
	encodeSelector := #encodeBoolean:.
	
]

{ #category : #accessing }
MDDSBoolType >> typeName [
	^ 'bool'
]
