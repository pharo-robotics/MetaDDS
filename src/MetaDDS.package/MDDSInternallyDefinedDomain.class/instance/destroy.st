accessing
destroy
	super destroy.
	types
		ifNotNil: [ 
			types unload.
			types := nil ]