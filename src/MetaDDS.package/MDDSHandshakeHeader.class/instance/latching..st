accessing
latching: aValue
	(self attribute: 'latching')
		ifNil: [ self attributes add: (MDDSHeaderAtribute name: 'latching' value: aValue) ]
		ifNotNil: [ :val | val value: aValue ]