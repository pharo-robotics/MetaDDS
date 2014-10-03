as yet unclassified
testRosoutTypeSerializerIsAlwaysTheSame
	| a  b |
	
	 a := type marshaller.
	 b := type marshaller.
	
	self assert: a == b.
	
	
