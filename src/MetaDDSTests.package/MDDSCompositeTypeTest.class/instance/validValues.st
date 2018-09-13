as yet unclassified
validValues 	
	
	| instance |
	
	
	^{
		(typeMarshaller newInstance float32: 2.0; int32: 1; int8: -1; uint64Array: { 0 . 0 };  int64FixedArray: { -1 . 0 . 1 }; yourself ) -> 
		#[53 0 0 0 0 0 0 64 1 0 0 0 255 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0]
	
	}