Class {
	#name : #MDDSConnectionOfferTest,
	#superclass : #MDDSConnectionDescriptionTest,
	#instVars : [
		'offer'
	],
	#category : 'MetaDDSTests-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSConnectionOfferTest >> setUp [
	super setUp.
	offer := MDDSConnectionOffer publisher: interactor  participant: participant. 
]

{ #category : #'as yet unclassified' }
MDDSConnectionOfferTest >> testInvalidMD5HeaderIsInvalid [
	self deny: (offer validateAndProcessHeader: self headerWrongSum)
]

{ #category : #'as yet unclassified' }
MDDSConnectionOfferTest >> testInvalidTopicHeaderIsInvalid [
	self deny: (offer validateAndProcessHeader: self headerWrongTopic)
]

{ #category : #'as yet unclassified' }
MDDSConnectionOfferTest >> testInvalidTopicTypeHeaderIsInvalid [
	self deny: (offer validateAndProcessHeader: self headerWrongTopicType)
]

{ #category : #'as yet unclassified' }
MDDSConnectionOfferTest >> testValidHeaderIsValid [
	self assert: (offer validateAndProcessHeader: self validHeader)
]
