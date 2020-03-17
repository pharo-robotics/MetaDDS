accessing
failBlock
	^ failBlock ifNil: [ failBlock := [ :e | self traceCr: e messageText ] ]