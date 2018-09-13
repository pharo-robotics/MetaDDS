accessing
destroy
	proxy
		ifNotNil: [ 
			proxy destroy.
			proxy := nil ]