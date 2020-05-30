Class {
	#name : #MDDSTypeTests,
	#superclass : #MDDSDomainBasedTests,
	#instVars : [
		'type'
	],
	#category : 'MetaDDSTests-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSTypeTests >> setUp [	
	super setUp.
	type := self adhoc type.
]

{ #category : #'as yet unclassified' }
MDDSTypeTests >> testAdhocDTOClassesGenerated [
	" this case should change"
	self assert: (Smalltalk at: #Std_msgs_Int16) isNotNil.
]

{ #category : #'as yet unclassified' }
MDDSTypeTests >> testAdhocTypeSerializer [
	self assert: (type marshaller isKindOf: MDDSBaseTypeMarshaller ) .
	


]

{ #category : #'as yet unclassified' }
MDDSTypeTests >> testAdhocTypeSerializerIsAlwaysTheSame [
	| a  b |
	
	 a := type marshaller.
	 b := type marshaller.
	
	self assert: a == b.
	
	

]
