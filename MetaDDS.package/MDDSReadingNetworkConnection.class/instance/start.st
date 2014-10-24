accessing
start
	keepRunning
		ifFalse: [ 
			keepRunning := true.
			process := [ 
			| value |
			[ keepRunning ]
				whileTrue: [ 
					[ 
					value := protocol loadStream: stream with: typeMarshaller.
					messageDispatcher dispatch: value ]
						on: Error
						do: [ :err | 
							messageDispatcher noteError: err.
							keepRunning := socket isConnected ] ].
			messageDispatcher noteStop: self.
			self destroy ] shootIt asStickyReference ]
		ifTrue: [ self error: 'The related process is already running!' ]