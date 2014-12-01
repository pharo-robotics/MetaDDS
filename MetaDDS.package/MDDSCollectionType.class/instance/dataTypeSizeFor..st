as yet unclassified
dataTypeSizeFor: aValue
self flag: #cambiarEstooo. " "

	(self isAPossibleValue: aValue ) ifFalse: [
		MDDSError signal: 'Unexpected value'.
	].
	
	^(aValue inject: 0 into:[
		:acc :val | 
		acc + (self  relatedType dataTypeSizeFor: val ).
	]).