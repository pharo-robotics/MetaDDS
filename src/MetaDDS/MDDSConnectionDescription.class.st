"
part of the dds architecutre includes for connection details, and, as well, support to several kind of IP based protocols. 
"
Class {
	#name : #MDDSConnectionDescription,
	#superclass : #Object,
	#instVars : [
		'participant'
	],
	#category : 'MetaDDS-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSConnectionDescription >> configureHeader: aHeader [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
MDDSConnectionDescription >> itIsSupportedBy: aProtocol [
	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
MDDSConnectionDescription >> latching [
	^ '0'.
]

{ #category : #accessing }
MDDSConnectionDescription >> participant [
	^ participant.
]

{ #category : #accessing }
MDDSConnectionDescription >> participant: aParticipantMirror [
	 participant := aParticipantMirror.
]

{ #category : #'as yet unclassified' }
MDDSConnectionDescription >> validateAndProcessHeader: aHeader [
	self subclassResponsibility
]
