as yet unclassified
baseFailSerialize

	invalidValues do: [
			:val |
		
			self should:[ protocol load: val ]  raise: Error.
		].
	