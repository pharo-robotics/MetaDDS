as yet unclassified
resolveNameFor: aName
	| split |
	split := $\ split: aName.
	split size = 1 ifTrue: [ 
		^ MDDSName notSpecificOn: (MDDSNamespace named: (split at:1))	
	].

	split size = 2 ifTrue: [ 
		^ MDDSName named: (split at:2) on: (MDDSNamespace named: (split at:1))	
	].
	self error: ' Unexpected name ', aName.