as yet unclassified
baseFailSerialize

	invalidValues do: [
			:val |
			self should:[ protocol load: val with: typeMarshaller ]  raise: Error.
		].
	