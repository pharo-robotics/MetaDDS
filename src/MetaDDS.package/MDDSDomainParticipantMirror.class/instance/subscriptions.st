accessing
subscriptions
	^ participant domain topics
		inject: Set new
		into: [ :set :topic | 
			set addAll: (topic subscriptions select: [ :s | s participant = participant ]).
			set ]