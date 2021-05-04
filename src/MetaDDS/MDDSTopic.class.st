"
Real topic. This topic has the ability to act as a topic it self. Register it, ask for publishers and subscribers.
"
Class {
	#name : #MDDSTopic,
	#superclass : #MDDSEntity,
	#instVars : [
		'type',
		'subscriber',
		'publisher'
	],
	#category : 'MetaDDS-Kernel'
}

{ #category : #constructor }
MDDSTopic class >> domain: aDomain name: aName type: aType [ 
	^ self new name: aName; type: aType; domain: aDomain; yourself.
]

{ #category : #constructor }
MDDSTopic class >> name: aName type: aTypeName [ 
	self flag: #watchComment. 
	" self halt.  Does any one use this "
	^ self new name: aName; type: aTypeName; yourself.
]

{ #category : #testing }
MDDSTopic >> hasPublications [
	^ publisher ifNil: [ false ] ifNotNil: [ self publications size > 0 ]
]

{ #category : #testing }
MDDSTopic >> hasSubscriptions [
	^ subscriber ifNil: [ false ] ifNotNil: [ self subscriptions size > 0 ]
]

{ #category : #testing }
MDDSTopic >> isPublishedBy: aParticipant [
	^ self hasPublications and: [ publisher hasPublicationFor: aParticipant ]
]

{ #category : #testing }
MDDSTopic >> isRegistered [
	| subscriberRegistered publisherRegistered |
	subscriberRegistered := false.
	publisherRegistered := false.
	subscriber ifNotNil: [ subscriberRegistered := subscriber isRegistered ].
	publisher ifNotNil: [ publisherRegistered := publisher isRegistered ].
	^ subscriberRegistered or: publisherRegistered
]

{ #category : #testing }
MDDSTopic >> isSubscribedBy: aParticipant [
	^ self hasSubscriptions and: [ publisher hasSubscriptionFor: aParticipant ]
]

{ #category : #accessing }
MDDSTopic >> name [
	^( super name beginsWith:'/' ) ifTrue: [ super name ] ifFalse: [ '/', super name ].
]

{ #category : #'as yet unclassified' }
MDDSTopic >> noticeConnectionWith: aHeader [
	type isTypePlaceHolder ifTrue: [ 
		" Is a type holder "
		type := type resolveRealTypeFrom: aHeader 	
	]
]

{ #category : #accessing }
MDDSTopic >> publications [
	^ publisher ifNotNil: [ publisher publications ] ifNil: [ Set new ]
]

{ #category : #accessing }
MDDSTopic >> publisher [
	^ publisher
		ifNil: [ 
			(subscriber isNotNil and: [ domain supportSubscriberPublisher not ])
				ifTrue: [ self error: 'We do not support to subscriber and publish the same topic' ]
				ifFalse: [ publisher := MDDSPublisher domain: domain named: name , '-publisher' on: self ] ]
]

{ #category : #accessing }
MDDSTopic >> subscriber [
	^ subscriber
		ifNil: [ 
			(publisher isNotNil and: [ domain supportSubscriberPublisher not ])
				ifTrue: [ self error: 'We do not support to subscriber and publish the same topic' ]
				ifFalse: [ subscriber := domain subscriberFor: self ] ]
]

{ #category : #accessing }
MDDSTopic >> subscriptions [
	^ subscriber ifNotNil: [ subscriber subscriptions ] ifNil: [ Set new ]
]

{ #category : #accessing }
MDDSTopic >> type [	
	^ type.
]

{ #category : #accessing }
MDDSTopic >> type: aType [
	type := aType
]
