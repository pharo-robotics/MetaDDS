as yet unclassified
baseUnserialize

	validValues do: [
		:val |
		self assert: ((protocol load: val value ) value closeTo: val key value).
	].
	


	
	
		