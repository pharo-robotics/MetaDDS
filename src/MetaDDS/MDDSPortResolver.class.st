"
A MDDSPortResolver is an object that gives always a different number for ports. It should guarantee also that the port is free, but in the future
"
Class {
	#name : #MDDSPortResolver,
	#superclass : #Object,
	#instVars : [
		'lastAssignedPort'
	],
	#classInstVars : [
		'resolver'
	],
	#category : #'MetaDDS-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSPortResolver class >> obtain [	
	^ resolver ifNil: [ resolver := self new ].
]

{ #category : #initialization }
MDDSPortResolver >> initialize [

	super initialize.
	lastAssignedPort := 9000
	                    +
	                    ((Random seed: DateAndTime now asUnixTime) 
		                     nextInteger: 100)
]

{ #category : #port }
MDDSPortResolver >> obtainPort [

	self flag: #GuaranteePortIsFree.
	lastAssignedPort := lastAssignedPort
	                    +
	                    ((Random seed: DateAndTime now asUnixTime) 
		                     nextInt: 10).
	^ lastAssignedPort
]
