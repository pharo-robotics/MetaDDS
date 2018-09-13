accessing
topic: aValue
	(self attribute: 'topic')
		ifNil: [ self attributes add: (MDDSHeaderAtribute name: 'topic' value: aValue) ]
		ifNotNil: [ :val | val value: aValue ]