Class {
	#name : #MDDSDomainBasedTests,
	#superclass : #MDDSPharoBasedTests,
	#instVars : [
		'domain'
	],
	#category : 'MetaDDSTests-Kernel'
}

{ #category : #running }
MDDSDomainBasedTests >> adhoc [
| type |
	type := (MDDSTypeDescriptor domain: domain  name: 'std_msgs/Int16') createType.
	^ domain createTopicNamed: '/adhoc'  type: type 
]

{ #category : #running }
MDDSDomainBasedTests >> adhocType [
	" The name is just to show that we can use the same name specification as in ROS but in Pharo. For Pharo it self it does not make much sense, since there is not a concept of installed packages or related namespace "
	^ MDDSTypeDefinition named: 'std_msgs/Int16' defined: { 
				MDDSFieldDefinition name: #data type: (MDDSBasicTypeDefinition for: MDDSInt16Type new) .
	}.
	
	
]

{ #category : #util }
MDDSDomainBasedTests >> participant [
	^ MDDSDomainParticipant domain: domain name: 'adhoc-participant'
]

{ #category : #running }
MDDSDomainBasedTests >> setUp [
	domain := self createDomain.
	domain registerTypeDefinition: self adhocType.
]

{ #category : #running }
MDDSDomainBasedTests >> tearDown [
	domain destroy.
	domain := nil.
	super tearDown .
]
