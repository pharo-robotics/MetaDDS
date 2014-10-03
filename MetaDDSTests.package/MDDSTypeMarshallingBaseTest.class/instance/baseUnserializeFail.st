as yet unclassified
baseUnserializeFail
	
	self invalidByteArrays do: [
		:val |
		self should: [(protocol load: val  )] raise: Error.
	].
	