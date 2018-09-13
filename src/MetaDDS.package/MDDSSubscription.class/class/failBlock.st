accessing
failBlock
	^ failBlock ifNil: [ failBlock := [ :e | self logCr: e messageText ] ]