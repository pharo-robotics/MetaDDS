related class building
buildDTOClass
	| class |
		
		class :=  MDDSAbstractDTO subclass: self classname asSymbol
					instanceVariableNames: ''
					classVariableNames: ''
					poolDictionaries: ''
					category: 'MDDSGenerated'.
		
		self installMethodsIn: class.
		self installConstantsIn: class.
		^ class