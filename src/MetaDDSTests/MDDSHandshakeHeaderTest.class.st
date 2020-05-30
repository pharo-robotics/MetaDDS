Class {
	#name : #MDDSHandshakeHeaderTest,
	#superclass : #TestCase,
	#instVars : [
		'offer',
		'header'
	],
	#category : 'MetaDDSTests-Kernel'
}

{ #category : #'as yet unclassified' }
MDDSHandshakeHeaderTest >> setUp [
	header := MDDSHandshakeHeader new. 
]

{ #category : #'as yet unclassified' }
MDDSHandshakeHeaderTest >> testReSetterChangesFieldsValue [
	
	header md5sum: 'abc'.
	self assert: header md5sum = 'abc'.
	header md5sum: 'abc2'.
	self assert: header md5sum = 'abc2'.
	header topic: '/test'.
	self assert: header topic = '/test'.
	header topic: '/test2'.
	self assert: header topic = '/test2'.
	header type: '/test_type'.
	self assert: header type = '/test_type'.
	header type: '/test_type2'.
	self assert: header type = '/test_type2'.

]

{ #category : #'as yet unclassified' }
MDDSHandshakeHeaderTest >> testReSetterDoNotChangeAmountOfFields [
	self assert: header attributes size = 0.
	header md5sum: 'abc'.
	self assert: header attributes size = 1.
	header md5sum: 'abc'.
	self assert: header attributes size = 1.
	header topic: '/test'.
	self assert: header attributes size = 2.	
	header topic: '/test'.
	self assert: header attributes size = 2.	
	header type: '/test_type'.
	self assert: header attributes size = 3.
	header type: '/test_type'.
	self assert: header attributes size = 3	
]

{ #category : #'as yet unclassified' }
MDDSHandshakeHeaderTest >> testSetterAddsField [
	self assert: header attributes size = 0.
	header md5sum: 'abc'.
	self assert: header attributes size = 1.
	header topic: '/test'.
	self assert: header attributes size = 2.	
	header type: '/test_type'.
	self assert: header attributes size = 3.
	
]

{ #category : #'as yet unclassified' }
MDDSHandshakeHeaderTest >> testUnsettedFieldsAreAccessableAsNil [
	self assert: header attributes size = 0.
	self assert: header md5sum isNil.
	self assert: header topic isNil.
	self assert: header type isNil.
	
]
