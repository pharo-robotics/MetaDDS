"
A PhaROSValue is a Value that has it definition in a dictionary. Is used as super class of all the generated classes related with  types.
"
Class {
	#name : #MDDSAbstractDTO,
	#superclass : #Object,
	#instVars : [
		'values'
	],
	#category : 'MetaDDS-Kernel'
}

{ #category : #converting }
MDDSAbstractDTO >> asString [
	| string |
	string := self class name , '>>' , String crlf , String tab.
	values keysAndValuesDo: [ :key :val | string := string , key asString , ':' , val asString , ' | ' ].
	string := string , String crlf.
	^ string
]

{ #category : #accessing }
MDDSAbstractDTO >> at:aName put: aValue [
	values at:aName put: aValue.
]

{ #category : #comparing }
MDDSAbstractDTO >> closeTo: anOtherValue [
	^ self class = anOtherValue class
		and: [
			
			| allSatisfy |
			allSatisfy := true.
			values keysAndValuesDo: [ :key :val | allSatisfy := allSatisfy and: [ val closeTo: (anOtherValue getAt: key) ] ].
			allSatisfy
			]
]

{ #category : #'as yet unclassified' }
MDDSAbstractDTO >> getAt:aName [ 
	^ values at: aName.
]

{ #category : #'as yet unclassified' }
MDDSAbstractDTO >> hasAttribute: aName [ 
	^ values includesKey: aName.
]

{ #category : #initialization }
MDDSAbstractDTO >> initialize [ 
	values := Dictionary new.
	
]

{ #category : #testing }
MDDSAbstractDTO >> isBasic [
	^ false. 
]

{ #category : #printing }
MDDSAbstractDTO >> printOn: aStream [
	aStream nextPutAll: self asString.
	
]
