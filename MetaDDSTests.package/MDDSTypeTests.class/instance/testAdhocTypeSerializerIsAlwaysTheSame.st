as yet unclassified
testAdhocTypeSerializerIsAlwaysTheSame
	| a  b |
	
	 a := type marshaller.
	 b := type marshaller.
	
	self assert: a == b.
	
	
