"
ARemote domain is a domain known for being defined externally to the image.
"
Class {
	#name : #MDDSExternallyDefinedDomain,
	#superclass : #MDDSDomain,
	#instVars : [
		'mirror'
	],
	#category : 'MetaDDS-Kernel'
}

{ #category : #constructor }
MDDSExternallyDefinedDomain class >> on: aMirror [
	| domain |
	domain := self new. 
	domain mirror: aMirror.
	aMirror domain: domain.
	^ domain.
]

{ #category : #abstract }
MDDSExternallyDefinedDomain >> createPublicationFor: aMDDSDomainParticipant with: aType [
	^ mirror createPublicationFor: aMDDSDomainParticipant with: aType.
]

{ #category : #accessing }
MDDSExternallyDefinedDomain >> destroy [
	super destroy.
	mirror
		ifNotNil: [ 
			mirror destroy.
			mirror := nil ]
]

{ #category : #querying }
MDDSExternallyDefinedDomain >> findLocalTopicByName: aName [
	^ self findLocalTopicByName: aName ifNone: [ MDDSError signal: 'There is not topic named ' , aName ]
]

{ #category : #'as yet unclassified' }
MDDSExternallyDefinedDomain >> findLocalTopicByName: aName ifFound: aFoundBlock ifNone: aBlock [
	^ self createdTopics detect: [ :t | t name = aName ] ifFound: aFoundBlock ifNone: aBlock
]

{ #category : #'as yet unclassified' }
MDDSExternallyDefinedDomain >> findLocalTopicByName: aName ifNone: aBlock [
	^ self createdTopics detect: [ :t | t name = aName ] ifNone: aBlock
]

{ #category : #testing }
MDDSExternallyDefinedDomain >> isRegistered: aMDDSTopic [
	^ mirror
		findTopicByName: aMDDSTopic name
		ifFound: [ :topic | topic type name = aMDDSTopic type name ]
		ifNone: [ false ]
]

{ #category : #abstract }
MDDSExternallyDefinedDomain >> loadTypeDefinitionNamed: aName definedFromString: aStringDefinition [
	^ mirror loadTypeDefinitionNamed: aName definedFromString: aStringDefinition
]

{ #category : #accessing }
MDDSExternallyDefinedDomain >> mirror [
	^ mirror
]

{ #category : #accessing }
MDDSExternallyDefinedDomain >> mirror: aDomainMirror [
	mirror := aDomainMirror.
	
]

{ #category : #accessing }
MDDSExternallyDefinedDomain >> notePublication: aMDDSIsPublishingAnnouncement [
	mirror notePublication: aMDDSIsPublishingAnnouncement
]

{ #category : #accessing }
MDDSExternallyDefinedDomain >> notePublicationFinished: aMDDSIsNotPublishingAnnouncement [
	mirror notePublicationFinished: aMDDSIsNotPublishingAnnouncement.
	(aMDDSIsNotPublishingAnnouncement publication) destroy.
]

{ #category : #accessing }
MDDSExternallyDefinedDomain >> noteSubscription: aMDDSIsSubscribedAnnouncement [
	mirror noteSubscription: aMDDSIsSubscribedAnnouncement
]

{ #category : #accessing }
MDDSExternallyDefinedDomain >> noteSubscriptionFinished: aMDDSIsNotSubscribedAnnouncement [ 
	mirror noteSubscriptionFinished: aMDDSIsNotSubscribedAnnouncement.
	(aMDDSIsNotSubscribedAnnouncement subscription) destroy.
]

{ #category : #port }
MDDSExternallyDefinedDomain >> obtainPort [
	^ mirror obtainPort.
]

{ #category : #abstract }
MDDSExternallyDefinedDomain >> participants [
	^ mirror participants
]

{ #category : #abstract }
MDDSExternallyDefinedDomain >> plainTypeDefinitionFor: aType [
	^ mirror plainTypeDefinitionFor: aType
]

{ #category : #abstract }
MDDSExternallyDefinedDomain >> registerTypeDefinition: aMDDSTypeDefinition [
	^ mirror registerTypeDefinition: aMDDSTypeDefinition
]

{ #category : #abstract }
MDDSExternallyDefinedDomain >> subscriberFor: aTopic [
	^ mirror subscriberFor: aTopic
]

{ #category : #'as yet unclassified' }
MDDSExternallyDefinedDomain >> supportSubscriberPublisher [
	^ mirror supportSubscriberPublisher
]

{ #category : #abstract }
MDDSExternallyDefinedDomain >> topics [
	^ mirror topics collect: #createTopic
]

{ #category : #abstract }
MDDSExternallyDefinedDomain >> typeDefinition: typeName ifAbsent: aBlock [
	^ mirror typeDefinition: typeName ifAbsent: aBlock
]
