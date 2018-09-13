serialize
decode: aFLDecoder 
	[
		^ aFLDecoder nextEncodedUint16.
	] on: Error do: [
		self error: 'cannot load value'.
	].