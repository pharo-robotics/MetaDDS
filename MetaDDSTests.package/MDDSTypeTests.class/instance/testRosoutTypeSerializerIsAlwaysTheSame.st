as yet unclassified
testRosoutTypeSerializerIsAlwaysTheSame
	| a  b |
	
	 a := type serializer.
	 b := type serializer.
	
	self assert: a == b.
	
	
