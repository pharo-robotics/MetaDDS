"
This header is specific for topic handshake it may have to many things from ROS needs, but time will tell us more about this. 
"
Class {
	#name : #MDDSHandshakeHeader,
	#superclass : #MDDSAbstractDTO,
	#category : 'MetaDDS-Kernel'
}

{ #category : #comparing }
MDDSHandshakeHeader >> = anOtherHeader [
	^ (anOtherHeader isKindOf: self class) and: [ self attributes asSet = anOtherHeader attributes asSet ]
]

{ #category : #converting }
MDDSHandshakeHeader >> asString [
	^ self attributes inject: '****** header ******' into: [ :acc :each | acc , String lf , each asString ]
]

{ #category : #accessing }
MDDSHandshakeHeader >> attribute: aName [
	^ self attributes detect: [ :attr | attr name = aName ] ifNone: nil
]

{ #category : #accessing }
MDDSHandshakeHeader >> attributes [
	^ self getAt: #attributes
]

{ #category : #accessing }
MDDSHandshakeHeader >> attributes: aValue [
	^ self at: #attributes put: aValue
]

{ #category : #'as yet unclassified' }
MDDSHandshakeHeader >> callerId [
	^ (self attribute: 'callerid') value
]

{ #category : #accessing }
MDDSHandshakeHeader >> callerId: aValue [
	self attributes add: (MDDSHeaderAtribute name: 'callerid' value: aValue)
]

{ #category : #access }
MDDSHandshakeHeader >> errorField [
	^ (self attribute: 'error') value
]

{ #category : #comparing }
MDDSHandshakeHeader >> hash [
	^ self attributes hash
]

{ #category : #initialization }
MDDSHandshakeHeader >> initialize [
	super initialize.
	self attributes: OrderedCollection new
]

{ #category : #'as yet unclassified' }
MDDSHandshakeHeader >> latching [
	^ (self attribute: 'latching') value
]

{ #category : #accessing }
MDDSHandshakeHeader >> latching: aValue [
	(self attribute: 'latching')
		ifNil: [ self attributes add: (MDDSHeaderAtribute name: 'latching' value: aValue) ]
		ifNotNil: [ :val | val value: aValue ]
]

{ #category : #private }
MDDSHandshakeHeader >> loadFrom: aConnectionPetition [
	aConnectionPetition configureHeader: self.
	
]

{ #category : #accessing }
MDDSHandshakeHeader >> md5sum [
	^ (self attribute: 'md5sum') value.
]

{ #category : #accessing }
MDDSHandshakeHeader >> md5sum: aValue [
	(self attribute: 'md5sum')
		ifNil: [ self attributes add: (MDDSHeaderAtribute name: 'md5sum' value: aValue) ]
		ifNotNil: [ :val | val value: aValue ]
]

{ #category : #'as yet unclassified' }
MDDSHandshakeHeader >> message_definition [
	^ (self attribute: 'message_definition') value.
]

{ #category : #accessing }
MDDSHandshakeHeader >> message_definition: aValue [
	self attributes add: (MDDSHeaderAtribute name: 'message_definition' value: aValue)
]

{ #category : #printing }
MDDSHandshakeHeader >> printOn: aStream [
	self asString printOn: aStream
]

{ #category : #'as yet unclassified' }
MDDSHandshakeHeader >> probe [
	^ ((self attribute: 'probe') value ifNil: [ 0 ]) asInteger
]

{ #category : #'as yet unclassified' }
MDDSHandshakeHeader >> probe: aValue [
	(self attribute: 'probe')
		ifNil: [ self attributes add: (MDDSHeaderAtribute name: 'probe' value: aValue) ]
		ifNotNil: [ :val | val value: aValue ]
]

{ #category : #'as yet unclassified' }
MDDSHandshakeHeader >> requestType [
	^ (self attribute: 'request_type') value.
]

{ #category : #'as yet unclassified' }
MDDSHandshakeHeader >> requestType: aValue [
	(self attribute: 'request_type')
		ifNil: [ self attributes add: (MDDSHeaderAtribute name: 'request_type' value: aValue) ]
		ifNotNil: [ :val | val value: aValue ]
]

{ #category : #'as yet unclassified' }
MDDSHandshakeHeader >> responseType [
	^ (self attribute: 'response_type') value.
]

{ #category : #'as yet unclassified' }
MDDSHandshakeHeader >> responseType: aValue [
	(self attribute: 'response_type')
		ifNil: [ self attributes add: (MDDSHeaderAtribute name: 'response_type' value: aValue) ]
		ifNotNil: [ :val | val value: aValue ]
]

{ #category : #'as yet unclassified' }
MDDSHandshakeHeader >> service [
	^ (self attribute: 'service') value
]

{ #category : #accessing }
MDDSHandshakeHeader >> service: aValue [
	(self attribute: 'service')
		ifNil: [ self attributes add: (MDDSHeaderAtribute name: 'service' value: aValue) ]
		ifNotNil: [ :val | val value: aValue ]
]

{ #category : #accessing }
MDDSHandshakeHeader >> topic [
	^ (self attribute: 'topic') value
]

{ #category : #accessing }
MDDSHandshakeHeader >> topic: aValue [
	(self attribute: 'topic')
		ifNil: [ self attributes add: (MDDSHeaderAtribute name: 'topic' value: aValue) ]
		ifNotNil: [ :val | val value: aValue ]
]

{ #category : #accessing }
MDDSHandshakeHeader >> type [
	^ (self attribute: 'type') value.
]

{ #category : #'accessing structure variables' }
MDDSHandshakeHeader >> type: aValue [
	(self attribute: 'type')
		ifNil: [ self attributes add: (MDDSHeaderAtribute name: 'type' value: aValue) ]
		ifNotNil: [ :val | val value: aValue ]
]
