accessing
failBlock
	^ failBlock ifNil: [ failBlock := [: e| Transcript open; show: e messageText; cr. ]].