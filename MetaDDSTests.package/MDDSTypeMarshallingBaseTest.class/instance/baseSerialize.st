as yet unclassified
baseSerialize
		validValues do: [
			:val |
"			self assert: (protocol dump: val key) size = ((val key type dataTypeSizeFor: val key value) + 4)."
			self assert: (protocol dump: val key) = val value.

		].
	