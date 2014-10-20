accessing
md5sum: aValue
	(self attribute: 'md5sum')
		ifNil: [ self attributes add: (MDDSHeaderAtribute name: 'md5sum' value: aValue) ]
		ifNotNil: [ :val | val value: aValue ]