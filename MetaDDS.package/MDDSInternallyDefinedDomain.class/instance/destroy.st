as yet unclassified
destroy
	super destroy.
	types
		ifNotNil: [ 
			types unload.
			types := nil ]