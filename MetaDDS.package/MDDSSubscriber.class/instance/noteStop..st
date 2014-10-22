message-dispatching
noteStop: aConnection
	connections remove: aConnection.
	connections isEmpty
		ifTrue: [ subscriptions do: [ :each | each noteStop ] ]