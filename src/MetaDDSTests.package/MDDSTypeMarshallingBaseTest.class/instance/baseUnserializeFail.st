as yet unclassified
baseUnserializeFail
	
	self invalidByteArrays do: [
		:val |
		self should: [(protocol load: val with: typeMarshaller )] raise: Error.
	].
	