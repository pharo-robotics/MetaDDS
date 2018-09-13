accessing
relatedConnections
	^ (self publications , self subscriptions collect: #connections) flattened