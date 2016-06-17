accessing
start
	process := (self -> #spinOnce) tkt
		loopingService;
		inALocalProcess;
		onServiceFinalization: [ self logProcessStop ]
			onFailure: [ :err | self logError: err ];
		start.
	^ self