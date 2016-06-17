run
spinOnce
	[ [ lastLoadedMessage := protocol loadStream: stream with: typeMarshaller.
	messageDispatcher dispatch: lastLoadedMessage ]
		on: OutOfMemory , MDDSError
		do: [ :err | 
			messageDispatcher noteError: err.
			self logError: err.
			self destroy ] ]
		on: Error
		do: [ :err | 
			self logError: err.
			socket isConnected
				ifFalse: [ self logDisconnection.
					self destroy ] ]