accessing
stop
	keepRunning ifTrue: [
		keepRunning := false.
		process := nil. 
	] ifFalse:[
		self error: 'The related process is notrunning!'
	]