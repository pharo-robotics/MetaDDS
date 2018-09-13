as yet unclassified
probe: aValue
	(self attribute: 'probe')
		ifNil: [ self attributes add: (MDDSHeaderAtribute name: 'probe' value: aValue) ]
		ifNotNil: [ :val | val value: aValue ]