accessing
publications
	^ participant domain topics
		inject: Set new
		into: [ :set :topic | 
			set addAll: (topic publications select: [ :s | s participant = participant ]).
			set ]