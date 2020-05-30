Class {
	#name : #MDDSPublisherSubscriberConnectedTests,
	#superclass : #MDDSDomainBasedTests,
	#instVars : [
		'publisher',
		'subscriber',
		'topic',
		'participant',
		'publication',
		'subscription'
	],
	#category : 'MetaDDSTests-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSPublisherSubscriberConnectedTests >> setUp [
	super setUp.
	participant := self participant.
	topic := self adhoc.
	publisher := topic publisher.
	subscriber := topic subscriber.
	domain addProtocol: MDDSProtocol new. 
	

]

{ #category : #'as yet unclassified' }
MDDSPublisherSubscriberConnectedTests >> testConnections [

	
	publication :=  publisher publishing: participant.
	subscription := subscriber forParticipant: participant onRead: [ : val | ].
		
	self assert: publication connections size = 1.
	self assert: subscription connections size = 1.
	

]

{ #category : #'as yet unclassified' }
MDDSPublisherSubscriberConnectedTests >> testExpectedType [
	|   publication subscription  isExpectedType |
	
	publication :=  publisher publishing: participant.
	subscription := subscriber forParticipant: participant onRead: [ : val | isExpectedType := val isKindOf: (Smalltalk at:#Std_msgs_Int16 ) ].
	publication publish: [ : v | v data: 1  ].
	self assert: isExpectedType.
]

{ #category : #'as yet unclassified' }
MDDSPublisherSubscriberConnectedTests >> testPassedValue [
	| value allTrue publication subscription executed |
	allTrue := true.
	executed := 0.
	value := nil. 
	publication :=  publisher publishing: participant.
	subscription := subscriber forParticipant: participant onRead: [ :val | 
			executed := executed + 1.
			allTrue := allTrue and: [ val data = value ] ].
		
	1 to: 20 do: [ :i | 
		value := i.
		publication publish: [ :val | val data: value ] ].
	self assert: executed = 20.
	self assert: allTrue
]

{ #category : #'as yet unclassified' }
MDDSPublisherSubscriberConnectedTests >> testUnConnectionsByUnpublishment [

	self testConnections.
	publisher stopPublishing: publication.
	
	
	self assert: publication connections size = 0.
	self assert: subscription connections size = 0.
]

{ #category : #'as yet unclassified' }
MDDSPublisherSubscriberConnectedTests >> testUnConnectionsByUnpublishmentTwoParticipant [
	| subscription2 participant2 |
	self testConnections.
	participant2 := MDDSDomainParticipant domain: domain name: 'adhoc-participant2'.
	subscription2 := subscriber forParticipant: participant2 onRead: [ :val |  ].
	self assert: publication connections size = 2.
	self assert: subscription connections size = 1.
	self assert: subscription2 connections size = 1.
	publisher stopPublishing: publication.
	self assert: publication connections size = 0.
	self assert: subscription connections size = 0.
	self assert: subscription2 connections size = 0
]

{ #category : #'as yet unclassified' }
MDDSPublisherSubscriberConnectedTests >> testUnConnectionsByUnsubscription [
	self testConnections.
	subscriber unregister: subscription.
	
	
	self assert: publication connections size = 0.
	self assert: subscription connections size = 0.
]

{ #category : #'as yet unclassified' }
MDDSPublisherSubscriberConnectedTests >> testUnConnectionsByUnsubscriptionTwoParticipants [
	| subscription2  participant2 | 
	self testConnections.
	
	participant2 := MDDSDomainParticipant domain: domain name: 'adhoc-participant2'.
	
	subscription2 := subscriber forParticipant: participant2 onRead: [ : val | ].
	self assert: publication connections size = 2.
	self assert: subscription connections size = 1.
	self assert: subscription2 connections size = 1.
	subscriber unregister: subscription. 	
	self assert: publication connections size = 1.
	self assert: subscription connections size = 0.
	
	subscriber unregister: subscription2.
	self assert: publication connections size = 0.
	self assert: subscription2 connections size = 0.
	
]

{ #category : #'as yet unclassified' }
MDDSPublisherSubscriberConnectedTests >> testUnconnectOnlyIfNoElseSubscription [
	self testConnections.
	subscriber unregister: subscription.
	
	
	self assert: publication connections size = 0.
	self assert: subscription connections size = 0.
]

{ #category : #'as yet unclassified' }
MDDSPublisherSubscriberConnectedTests >> testUnconnectOnlyOneConnectionPerSubscriberTwoIfOtherParticipant [
	| subscription2  participant2 | 
	self testConnections.
	self assert: publication connections size = 1.
	self assert: subscription connections size = 1.
	
	participant2 := MDDSDomainParticipant domain: domain name: 'adhoc-participant2'.
	
	subscription2 := subscriber forParticipant: participant2 onRead: [ : val | ].
	self assert: publication connections size = 2.
	self assert: subscription2 connections size = 1.


]
