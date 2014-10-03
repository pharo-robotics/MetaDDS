building
relatedClass

	^ Smalltalk at:(self classname asSymbol) ifAbsent: [ 
		self buildDTOClass.	
	 ] 
	