accessing
stop
	| proc |
	proc := process.
	process := nil.
	proc stop.
	^ self