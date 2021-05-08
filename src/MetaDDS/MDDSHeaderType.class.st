"
A MDDSHeaderType is an special kind of type that is strictly developed for the handshake tear of the any protocol.
"
Class {
	#name : #MDDSHeaderType,
	#superclass : #MDDSBaseTypeMarshaller,
	#category : 'MetaDDS-TypesMarshalling'
}

{ #category : #'as yet unclassified' }
MDDSHeaderType class >> alterName [
	^ #HeaderAttribute
]

{ #category : #'as yet unclassified' }
MDDSHeaderType >> calculateAttributeLength: anAttribute [
	^ 4 + anAttribute name asByteArray size + anAttribute value asByteArray size + 1.
	
" Size of the encoded size of the value
the size of the name
the size of the value
the size of the = character"
]

{ #category : #accessing }
MDDSHeaderType >> dataTypeSizeFor: aValue [
	^ aValue attributes inject: 0 into: [ : acc :each | acc + (self calculateAttributeLength: each) ] .
]

{ #category : #accessing }
MDDSHeaderType >> defaultValueString [ 
	^ ' MDDSHandshakeHeader new'.
	
]

{ #category : #testing }
MDDSHeaderType >> isAPossibleValue: aValue [ 
	self shouldBeImplemented 
	
	
]

{ #category : #'instance creation' }
MDDSHeaderType >> newInstance [ 
	^ MDDSHandshakeHeader new.
]

{ #category : #building }
MDDSHeaderType >> relatedClass [
	^ MDDSHandshakeHeader 
]

{ #category : #initializing }
MDDSHeaderType >> setEncodeDecodeSelectors [ 
	decodeSelector := #nextEncodedHeader.
	encodeSelector := #encodeHeader:.
	 
]

{ #category : #'instance creation' }
MDDSHeaderType >> sizeFor: aDecoder [ 
	^aDecoder nextEncodedUint32.
]

{ #category : #accessing }
MDDSHeaderType >> typeName [ 
	^ self error: 'do not apply'.
]
