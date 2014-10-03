as yet unclassified
rosheader
	^ rosheader ifNil: [
		 rosheader := self rosheaderDefinition typeBuilder buildTypeMarshaller.
	]