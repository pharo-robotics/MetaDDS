accessing
dataTypeSizeFor: aValue
	^ aValue attributes inject: 0 into: [ : acc :each | acc + (self calculateAttributeLength: each) ] .