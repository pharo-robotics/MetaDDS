as yet unclassified
encodeHeaderAttribute: aHeaderAttribute
	| rawValue |
	rawValue := aHeaderAttribute name asByteArray , self class fieldNameSeparator asByteArray
		, aHeaderAttribute value asByteArray.
	self encodeUint32: rawValue size.
	self encodeBytes: rawValue