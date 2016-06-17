accessing
subscriptions
	^ subscriber ifNotNil: [ subscriber subscriptions ] ifNil: [ Set new ]