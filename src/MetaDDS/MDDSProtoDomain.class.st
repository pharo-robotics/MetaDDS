"
A proto domain is not a Domain nor a DomainMirror. Is the base of both.
"
Class {
	#name : #MDDSProtoDomain,
	#superclass : #Object,
	#instVars : [
		'finalized'
	],
	#category : 'MetaDDS-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSProtoDomain class >> initialize [
	super initialize.
	SessionManager default registerUserClassNamed: self name atPriority: self sessionManagerPriority.
]

{ #category : #'as yet unclassified' }
MDDSProtoDomain class >> sessionManagerPriority [
	^ 100
]

{ #category : #'as yet unclassified' }
MDDSProtoDomain class >> shutDown: isImageQuitting [
	| obsoleteDomain |
	isImageQuitting
		ifTrue: [ obsoleteDomain := MDDSObsoleteDomain new.
			(self allSubInstances do: #finalize) do: [ :d | d becomeForward: obsoleteDomain ] ]
]

{ #category : #'as yet unclassified' }
MDDSProtoDomain class >> startUp [
]

{ #category : #converting }
MDDSProtoDomain >> asString [
	^ 'DDS-Domain'
]

{ #category : #finalization }
MDDSProtoDomain >> finalize [
	" Defined by each kind of domain "
	finalized := true.
]

{ #category : #querying }
MDDSProtoDomain >> findTopicByName: aName [
	^ self findTopicByName: aName ifNone: [ MDDSError signal: 'There is not topic named ' , aName ]
]

{ #category : #querying }
MDDSProtoDomain >> findTopicByName: aName ifFound: aFoundBlock ifNone: aBlock [
	^ self topics detect: [ :t | t name = aName ] ifFound: aFoundBlock ifNone: aBlock
]

{ #category : #querying }
MDDSProtoDomain >> findTopicByName: aName ifNone: aBlock [
	^ self topics detect: [ :t | t name = aName ] ifNone: aBlock
]

{ #category : #testing }
MDDSProtoDomain >> isTypeDefined: aTypeName [
	self typeDefinition: aTypeName ifAbsent: [ ^ false ].
	^ true.
]

{ #category : #abstract }
MDDSProtoDomain >> loadTypeDefinitionNamed: aName definedFromString: aStringDefinition [
	self subclassResponsibility
]

{ #category : #accessing }
MDDSProtoDomain >> notePublication: aMDDSIsPublishingAnnouncement [

]

{ #category : #accessing }
MDDSProtoDomain >> notePublicationFinished: aMDDSIsNotPublishingAnnouncement [ 

]

{ #category : #accessing }
MDDSProtoDomain >> noteSubscription: aMDDSIsSubscribedAnnouncement [ 

]

{ #category : #accessing }
MDDSProtoDomain >> noteSubscriptionFinished: aMDDSIsNotSubscribedAnnouncement [ 
]

{ #category : #abstract }
MDDSProtoDomain >> participants [
	^ self subclassResponsibility 
]

{ #category : #abstract }
MDDSProtoDomain >> plainTypeDefinitionFor: aType [
	self subclassResponsibility.
]

{ #category : #abstract }
MDDSProtoDomain >> subscriberFor: aTopic [
	^ MDDSSubscriber domain: self named: aTopic name , '-subscriber' on: aTopic
]

{ #category : #abstract }
MDDSProtoDomain >> topics [
	self subclassResponsibility
]

{ #category : #abstract }
MDDSProtoDomain >> typeDefinition: aTypeName [
	^ self typeDefinition: aTypeName ifAbsent: [  self error: ' There is no type named ' , aTypeName ]
]

{ #category : #abstract }
MDDSProtoDomain >> typeDefinition: aTypeName ifAbsent: aBlock [
	^self subclassResponsibility 
]
