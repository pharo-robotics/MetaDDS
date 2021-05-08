Class {
	#name : #MDDSWritingConnection,
	#superclass : #MDDSConnection,
	#instVars : [
		'newComer'
	],
	#category : #'MetaDDS-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSWritingConnection >> initialize [
	super initialize.
	newComer := true
]

{ #category : #testing }
MDDSWritingConnection >> isDead [
	^ self subclassResponsibility 
]

{ #category : #testing }
MDDSWritingConnection >> isNewComer [
	^ newComer
]

{ #category : #'as yet unclassified' }
MDDSWritingConnection >> write: aDataValue with: aMarshaller [
	^ self subclassResponsibility 
]
