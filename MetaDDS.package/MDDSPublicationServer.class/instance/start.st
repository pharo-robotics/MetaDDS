accessing
start
	listener ifNil:[
		listener := protocol createSocketForlistenOn: port.
		keepRunning := true.
		process := [ self run ] shootIt asStickyReference.
	].