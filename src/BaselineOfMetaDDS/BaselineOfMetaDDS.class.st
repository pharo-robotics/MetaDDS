Class {
	#name : #BaselineOfMetaDDS,
	#superclass : #BaselineOf,
	#category : #BaselineOfMetaDDS
}

{ #category : #'development support' }
BaselineOfMetaDDS class >> DevelopmentSupport [

"See the methods in the 'development support' category on the class-side of MetacelloBaseConfiguration. Decide what development support methods you would like to use and copy them the the class-side of your configuration."
	<apiDocumentation>

]

{ #category : #private }
BaselineOfMetaDDS class >> baseConfigurationClassIfAbsent: aBlock [

	^Smalltalk
		at: #MetacelloBaseConfiguration
		ifAbsent: [ 
			self ensureMetacelloBaseConfiguration.
			Smalltalk at: #MetacelloBaseConfiguration ifAbsent: aBlock ].

]

{ #category : #private }
BaselineOfMetaDDS class >> ensureMetacelloBaseConfiguration [

	Smalltalk
		at: #MetacelloBaseConfiguration
		ifAbsent: [ 
			| repository version |
			repository := MCHttpRepository location: 'http://seaside.gemstone.com/ss/metacello' user: '' password: ''.
			repository
				versionReaderForFileNamed: 'Metacello-Base-DaleHenrichs.2.mcz'
				do: [ :reader | 
					version := reader version.
					version load.
					version workingCopy repositoryGroup addRepository: repository ] ]
]

{ #category : #'metacello tool support' }
BaselineOfMetaDDS class >> isMetacelloConfig [
	"Answer true and the Metacello tools will operate on you"
	
	^true
]

{ #category : #baselines }
BaselineOfMetaDDS >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'XMLRPC'
					with: [ spec
						loads: #('All');
						repository: 'github://sbragagnolo/xmlrpc/src' ];
				baseline: 'OrderPreservingDictionary'
					with:
						[ spec repository: 'github://svenvc/XML-Support-Pharo' ];
				baseline: 'TaskIt'
					with: [ spec repository: 'github://pharo-contributions/taskit' ].
			spec
				package: #MetaDDS
					with: [ spec requires: #('TaskIt' 'XMLRPC' 'OrderPreservingDictionary') ];
				package: #MetaDDSTests.
			spec
				group: 'core' with: #(#MetaDDS);
				group: 'default' with: #(#MetaDDS #MetaDDSTests) ]
]
