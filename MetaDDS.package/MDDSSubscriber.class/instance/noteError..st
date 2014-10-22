message-dispatching
noteError: anError
	subscriptions do: [ :each | each noteFailure: anError ]