as yet unclassified
encodeHeader: aHeader
	aHeader attributes do: [ :attr | self encodeHeaderAttribute: attr ]