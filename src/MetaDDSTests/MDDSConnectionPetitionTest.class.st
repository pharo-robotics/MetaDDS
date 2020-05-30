Class {
	#name : #MDDSConnectionPetitionTest,
	#superclass : #MDDSConnectionDescriptionTest,
	#instVars : [
		'petition'
	],
	#category : 'MetaDDSTests-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSConnectionPetitionTest >> setUp [
	super setUp.
	petition := MDDSConnectionPetition protocolName: nil ip: nil port: nil subscriber: interactor participant: participant.
]

{ #category : #'as yet unclassified' }
MDDSConnectionPetitionTest >> testInvalidMD5HeaderIsInvalid [
	self deny: (petition validateAndProcessHeader: self headerWrongSum)
]

{ #category : #'as yet unclassified' }
MDDSConnectionPetitionTest >> testInvalidTopicHeaderIsInvalid [
	self deny: (petition validateAndProcessHeader: self headerWrongTopic)
]

{ #category : #'as yet unclassified' }
MDDSConnectionPetitionTest >> testInvalidTopicTypeHeaderIsInvalid [
	self deny: (petition validateAndProcessHeader: self headerWrongTopicType)
]

{ #category : #'as yet unclassified' }
MDDSConnectionPetitionTest >> testValidHeaderIsValid [
	self assert: (petition validateAndProcessHeader: self validHeader)
]
