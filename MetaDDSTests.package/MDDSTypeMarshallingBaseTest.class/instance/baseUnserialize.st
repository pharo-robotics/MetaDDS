as yet unclassified
baseUnserialize

	validValues do: [
		:val |
		self assert: ((protocol load: val value with: typeMarshaller ) value closeTo: val key value).
	].
	


	
	
		