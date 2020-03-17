accessing
noteError: anError
	anError class = ConnectionTimedOut
		ifFalse: [ 
			self traceCr: 'Subscription Socket ERROR: ',
			anError messageText ]