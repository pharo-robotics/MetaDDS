as yet unclassified
asString
	^ self attributes inject: '****** header ******' into: [ :acc :each | acc, String lf, each asString ] .
	 