as yet unclassified
testRosoutTypeUnknownFieldAccessFail

	self should: [ 
		(typeDescription definition field: 'unknown' ) isNotNil.
	 ] raise: MDDSError.

