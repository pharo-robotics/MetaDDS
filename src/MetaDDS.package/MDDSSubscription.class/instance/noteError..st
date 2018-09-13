accessing
noteError: anError
	anError class = ConnectionTimedOut
		ifFalse: [ 
			self logCr: 'Subscription Socket ERROR: ',
			anError messageText ]