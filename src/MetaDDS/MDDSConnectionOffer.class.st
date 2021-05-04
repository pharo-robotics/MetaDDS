"
part of the dds architecutre includes a offers for connection, and, as well, support to several kind of IP based protocols
"
Class {
	#name : #MDDSConnectionOffer,
	#superclass : #MDDSTopicConnectionDescription,
	#instVars : [
		'onNewConnection'
	],
	#category : 'MetaDDS-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSConnectionOffer class >> publisher: aPublisher participant: aParticipantMirror [ 
	^ self new topicInteractor: aPublisher; participant: aParticipantMirror ;yourself 
]

{ #category : #'as yet unclassified' }
MDDSConnectionOffer class >> publisher: aPublisher participant: aParticipantMirror onNewConnection: aValuableWithOneArg [
	^ self new
		topicInteractor: aPublisher;
		participant: aParticipantMirror;
		onNewConnection: aValuableWithOneArg;
		yourself
]

{ #category : #'as yet unclassified' }
MDDSConnectionOffer >> createConnectionFor: aProtocol on: aSocket and: aStream for: aParticipantName [
	^ self
		noteNewConnection:
			(MDDSWritingNetworkConnection with: aProtocol for: aSocket representing: aParticipantName)
]

{ #category : #'as yet unclassified' }
MDDSConnectionOffer >> itIsSupportedBy: aProtocol [
	^ participant protocols anySatisfy: [ :p | p name = aProtocol name ]
]

{ #category : #'as yet unclassified' }
MDDSConnectionOffer >> noteNewConnection: aConnection [
	onNewConnection ifNotNil: [ onNewConnection value: aConnection ].
	^ aConnection
]

{ #category : #accessing }
MDDSConnectionOffer >> onNewConnection: aValuableWithOneArg [
	onNewConnection := aValuableWithOneArg
]
