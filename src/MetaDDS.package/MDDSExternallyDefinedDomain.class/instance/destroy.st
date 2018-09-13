accessing
destroy
	super destroy.
	mirror
		ifNotNil: [ 
			mirror destroy.
			mirror := nil ]