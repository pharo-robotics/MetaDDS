pseudo-dsl
initialize 	
	super initialize.
	self = MDDSBaseTypeSerializer ifFalse: [
		self registerAlterName.
	]