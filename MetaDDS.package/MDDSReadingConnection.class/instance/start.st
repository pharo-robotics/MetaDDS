accessing
start
	keepRunning ifFalse: [
		keepRunning := true.
		process := [ 

			[ keepRunning ]	whileTrue: [ 
				[  
					messageDispatcher dispatch: (protocol loadStream: stream).
				] on: Error do: [ :err |
					self halt.
					messageDispatcher noteError: err.
					keepRunning := socket isConnected.
				]
			].
			
			messageDispatcher noteStop: self.
			self destroy.
		] shootIt asStickyReference.
	] ifTrue:[
		self error: 'The related process is already running!'
	]