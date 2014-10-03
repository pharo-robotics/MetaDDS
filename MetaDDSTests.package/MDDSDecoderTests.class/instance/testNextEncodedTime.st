as yet unclassified
testNextEncodedTime
	| val | 
	 decoder stream: (ReadStream on: #[0 0 0 0 0 0 0 0 255 224 245 5 0 0 0 0] ).
	val := decoder nextEncodedTime.
	 self assert: ( val = MDDSTimestamp new).
	val := decoder nextEncodedTime.
	 self assert: (val = (MDDSTimestamp new + (Duration seconds: 99999999))).

	 self should: [decoder nextEncodedTime] raise: Error.
