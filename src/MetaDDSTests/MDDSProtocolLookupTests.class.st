Class {
	#name : #MDDSProtocolLookupTests,
	#superclass : #MDDSDomainBasedTests,
	#instVars : [
		'topic',
		'subscriber',
		'subscription',
		'participant'
	],
	#category : 'MetaDDSTests-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSProtocolLookupTests >> setUp [
	super setUp.
	participant := self participant.
	topic := self adhoc.
	subscriber := topic subscriber.
	domain addProtocol: MDDSProtocol new. 
	
]

{ #category : #'as yet unclassified' }
MDDSProtocolLookupTests >> testProcotolSelectorExists [
	
]
