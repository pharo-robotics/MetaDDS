accessing
typeLoader
	^ typeLoader ifNil: [ 
		typeLoader := PhaROSTypeLoder commandBased.	
	 ].