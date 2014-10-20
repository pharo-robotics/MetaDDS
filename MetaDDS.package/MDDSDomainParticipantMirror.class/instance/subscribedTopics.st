accessing
subscribedTopics
	^ participant domain topics select: [ :t | t subscriptions anySatisfy: [:s | s participant = participant]]  