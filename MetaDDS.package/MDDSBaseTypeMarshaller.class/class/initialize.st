pseudo-dsl
initialize 	
	super initialize.
	self = MDDSBaseTypeMarshaller ifFalse: [
		self registerAlterName.
	]