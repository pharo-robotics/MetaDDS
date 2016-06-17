accessing
service: aValue
	(self attribute: 'service')
		ifNil: [ self attributes add: (MDDSHeaderAtribute name: 'service' value: aValue) ]
		ifNotNil: [ :val | val value: aValue ]