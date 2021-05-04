"
A Hz is neasure that represents times per seconds
"
Class {
	#name : #Hz,
	#superclass : #Object,
	#instVars : [
		'timesPerSecond'
	],
	#category : 'MetaDDS-Util'
}

{ #category : #'as yet unclassified' }
Hz class >> tps: aNumber [
	^ self new timesPerSecond: aNumber; yourself
]

{ #category : #arithmetic }
Hz >> + anHz [
	^ self class tps: timesPerSecond + anHz timesPerSecond
]

{ #category : #arithmetic }
Hz >> - anHz [
	^ self class tps: timesPerSecond - anHz timesPerSecond
]

{ #category : #accessing }
Hz >> cycle [
	^ (1 / timesPerSecond) asSeconds. 
]

{ #category : #accessing }
Hz >> cycleDelay [
	^ self cycle asDelay.
]

{ #category : #comparing }
Hz >> max: anOtherHz [
	^ timesPerSecond > anOtherHz timesPerSecond
		ifTrue: [ self ]
		ifFalse: [ anOtherHz ]
]

{ #category : #accessing }
Hz >> timesPerSecond [
	^ timesPerSecond
]

{ #category : #accessing }
Hz >> timesPerSecond: aNumber [
	timesPerSecond  := aNumber
]
