Class {
	#name : #MDDSPublisherTests,
	#superclass : #MDDSDomainBasedTests,
	#instVars : [
		'publisher',
		'topic',
		'participant'
	],
	#category : 'MetaDDSTests-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSPublisherTests >> setUp [
	super setUp.
	participant := self participant.
	topic := self adhoc.
	publisher := topic publisher.
	domain addProtocol: MDDSProtocol new. 
]

{ #category : #'as yet unclassified' }
MDDSPublisherTests >> testJustOneInstance [
	self assert: (publisher = topic publisher).
]

{ #category : #'as yet unclassified' }
MDDSPublisherTests >> testPublishingCreated [
	self assert: ((publisher publishing: participant) isKindOf: MDDSPublication)
]

{ #category : #'as yet unclassified' }
MDDSPublisherTests >> testPublishingCreatedIsAlwaysTheSame [
	| publicationA publicationB |
	
	publicationA := publisher publishing: participant.
	publicationB := publisher publishing: participant.
	
	self assert: publicationA == publicationB
]

{ #category : #'as yet unclassified' }
MDDSPublisherTests >> testPublishingCreationHasEffect [
	
	publisher publishing: participant.
	self assert: (publisher publications size = 1).
	
	
]

{ #category : #'as yet unclassified' }
MDDSPublisherTests >> testPublishingLaunchesEvent [

	domain when: MDDSIsPublishingAnnouncement send:#setBoolean to: self.
	self resetBoolean.
	self deny: boolean.
	publisher publishing: participant.
	self assert: boolean.
	
]

{ #category : #'as yet unclassified' }
MDDSPublisherTests >> testStopPublishing [

	publisher publishing: participant.
	self assert: (publisher publications size = 1).
	publisher stopPublishingParticipant: participant.		
	self assert: (publisher publications size = 0).
]

{ #category : #'as yet unclassified' }
MDDSPublisherTests >> testStopPublishingFailsIfIsNotPublishing [
	self should: [ publisher stopPublishingParticipant: participant ] raise: Error
]

{ #category : #'as yet unclassified' }
MDDSPublisherTests >> testStopPublishingLaunchesEvent [

	domain when: MDDSIsNotPublishingAnnouncement send: #setBoolean to: self.
	
	self resetBoolean.
	self deny: boolean.
	publisher publishing: participant.
	publisher stopPublishingParticipant: participant.		

	self assert: boolean.
]
