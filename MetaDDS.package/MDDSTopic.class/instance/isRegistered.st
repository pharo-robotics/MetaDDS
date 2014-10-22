testing
isRegistered
	^ self subscriber isRegistered or: [ self publisher isRegistered ]