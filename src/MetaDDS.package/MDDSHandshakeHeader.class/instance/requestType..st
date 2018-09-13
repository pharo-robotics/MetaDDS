as yet unclassified
requestType: aValue
	(self attribute: 'request_type')
		ifNil: [ self attributes add: (MDDSHeaderAtribute name: 'request_type' value: aValue) ]
		ifNotNil: [ :val | val value: aValue ]