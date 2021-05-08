"
A PhaROSTimeType is a time stamp type.
"
Class {
	#name : #MDDSTimeType,
	#superclass : #MDDSBaseTypeMarshaller,
	#category : 'MetaDDS-TypesMarshalling'
}

{ #category : #accessing }
MDDSTimeType class >> dataTypeSize [
	^ 8
]

{ #category : #'pseudo-dsl' }
MDDSTimeType class >> registerAlterName [
	" Name collision. DSL constructor name is at Time class as extention method "
]

{ #category : #accessing }
MDDSTimeType >> defaultValueString [
	^ ' MDDSTimestamp now'. 
]

{ #category : #testing }
MDDSTimeType >> isAPossibleValue: aTime [ 
	^ (aTime isKindOf: MDDSTimestamp) and: [
		aTime seconds  < 4294967296 and: [
			aTime nanoSeconds  < 4294967296 
		]
	].
]

{ #category : #'instance creation' }
MDDSTimeType >> newInstance [ 
	^ Time new. 
]

{ #category : #initializing }
MDDSTimeType >> setEncodeDecodeSelectors [
	encodeSelector := #encodeTime:.
	decodeSelector := #nextEncodedTime.
]

{ #category : #accessing }
MDDSTimeType >> typeName [ 
	^ 'time'
]
