accessing
start
	process := TKTParameterizableService new.
	process onSetUpDo: (MessageSend receiver: self selector: #logCr: argument: 'DDS System monitor has started').
	process onTearDownDo: (MessageSend receiver: self selector: #logProcessStop).
	process step: (MessageSend receiver: self selector: #spinOnce).
	process start.
	^ self