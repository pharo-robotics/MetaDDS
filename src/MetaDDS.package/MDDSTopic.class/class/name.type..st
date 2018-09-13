constructor
name: aName type: aTypeName 
	self flag: #watchComment. 
	" self halt.  Does any one use this "
	^ self new name: aName; type: aTypeName; yourself.