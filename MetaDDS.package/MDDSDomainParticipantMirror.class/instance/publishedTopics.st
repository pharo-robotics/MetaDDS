accessing
publishedTopics
	^ participant domain topics select: [ :t | t publications anySatisfy: [:s | s participant = participant]]  