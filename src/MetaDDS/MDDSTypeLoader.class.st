"
A MDDSTypeLoder in an object for loading types format for connections.
"
Class {
	#name : #MDDSTypeLoader,
	#superclass : #Object,
	#instVars : [
		'registry'
	],
	#category : 'MetaDDS-Kernel'
}

{ #category : #initialization }
MDDSTypeLoader >> initialize [
	registry := Dictionary new.
]

{ #category : #abstract }
MDDSTypeLoader >> loadTypeDefinitionNamed: aName definedFromString: aStringDefinition [
	| definition |
	definition := STON reader
		on: aStringDefinition readStream;
		next.
	self registerTypeDefinition: definition.
	^ definition
]

{ #category : #abstract }
MDDSTypeLoader >> plainTypeDefinitionFor: aType [
	
	^ String
		streamContents: [ :stream | 
			STON writer
				on: stream;
				nextPut: (self typeDefinition: aType name) ]
]

{ #category : #private }
MDDSTypeLoader >> privateRegisterTypeDefinition: aMDDSTypeDefinition [

	registry at: aMDDSTypeDefinition name put: aMDDSTypeDefinition.
	^aMDDSTypeDefinition
]

{ #category : #abstract }
MDDSTypeLoader >> registerTypeDefinition: aMDDSTypeDefinition [
	^ aMDDSTypeDefinition beRegisteredBy: self.
	
]

{ #category : #abstract }
MDDSTypeLoader >> typeDefinition: aTypeId [
	^ self typeDefinition: aTypeId ifAbsent: [ self error: ' There is no type named ' , aTypeId]
]

{ #category : #abstract }
MDDSTypeLoader >> typeDefinition: aTypeName ifAbsent: aBlock [
	^ registry at: aTypeName ifAbsent: aBlock.
]

{ #category : #installing }
MDDSTypeLoader >> unload [
	registry removeAll.
]
