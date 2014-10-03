as yet unclassified
goLive
	[ itIsAlive  ] whileTrue: [
		[  
			self cycleDelay wait.
			self announce: self heartbeat. 
		] on: Error do: [ :err | Transcript show: err asString; cr. ]
	]