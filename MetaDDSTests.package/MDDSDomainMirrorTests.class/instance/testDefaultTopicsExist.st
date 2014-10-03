basic-calls-tests
testDefaultTopicsExist
	| topics |
	
	topics := domainMirror topics.
		self assert: (topics anySatisfy: [ :t | t name =  '/rosout' ] ).
	self assert: (topics anySatisfy: [ :t | t name = '/rosout_agg' ] ).
