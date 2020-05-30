Class {
	#name : #MDDSWritingConnection,
	#superclass : #MDDSConnection,
	#category : 'MetaDDS-Kernel'
}

{ #category : #testing }
MDDSWritingConnection >> isDead [
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
MDDSWritingConnection >> write: aDataValue with: aMarshaller [
	^ self subclassResponsibility 
]
