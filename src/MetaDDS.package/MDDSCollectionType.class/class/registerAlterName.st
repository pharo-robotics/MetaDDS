pseudo-dsl
registerAlterName
	" This is an abstract class. Does not apply "
	self = MDDSCollectionType ifFalse: [ 
		super registerAlterName.
	 ]