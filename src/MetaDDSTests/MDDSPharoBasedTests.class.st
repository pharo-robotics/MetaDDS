Class {
	#name : #MDDSPharoBasedTests,
	#superclass : #TestCase,
	#instVars : [
		'boolean'
	],
	#category : 'MetaDDSTests-Kernel'
}

{ #category : #setup }
MDDSPharoBasedTests >> createDomain [
	^ MDDSInternallyDefinedDomain new
]

{ #category : #'as yet unclassified' }
MDDSPharoBasedTests >> resetBoolean [
	boolean := false.
]

{ #category : #'as yet unclassified' }
MDDSPharoBasedTests >> setBoolean [
	boolean := true.
]
