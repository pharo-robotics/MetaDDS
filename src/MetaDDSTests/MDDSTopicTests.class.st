Class {
	#name : #MDDSTopicTests,
	#superclass : #MDDSDomainBasedTests,
	#instVars : [
		'adhoc'
	],
	#category : 'MetaDDSTests-Kernel'
}

{ #category : #tests }
MDDSTopicTests >> setUp [
	super setUp.
	adhoc := self adhoc.
]

{ #category : #tests }
MDDSTopicTests >> testCreatePublisher [
	
	self assert: (adhoc publisher isKindOf: MDDSPublisher).
	
]

{ #category : #tests }
MDDSTopicTests >> testCreateSubscriber [
	
	self assert: (adhoc subscriber isKindOf: MDDSSubscriber).
	
]

{ #category : #tests }
MDDSTopicTests >> testIsNotRegistered [
	
	self deny: (adhoc isRegistered).
	
]

{ #category : #tests }
MDDSTopicTests >> testTypeIsAType [
	self assert: (self adhoc type isKindOf: MDDSType ).
]
