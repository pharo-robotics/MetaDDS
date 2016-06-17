as yet unclassified
testNextEncodedFloat32
	" in the stream { float . float . float . float . 1 . 0 . nan }"

	decoder stream: (ReadStream on: #[0 0 128 63 0 0 128 191 0 0 0 0 0 0 64 64 0 0 192 127]).
	self assert: decoder nextEncodedFloat32 equals: 1.0.
	self assert: decoder nextEncodedFloat32 equals: -1.0.
	self assert: decoder nextEncodedFloat32 equals: 0.0.
	self assert: decoder nextEncodedFloat32 equals: 3.0.
	self assert: decoder nextEncodedFloat32 isNaN.
	self should: [ decoder nextEncodedFloat32 ] raise: Error