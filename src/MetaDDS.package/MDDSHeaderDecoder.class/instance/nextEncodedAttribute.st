as yet unclassified
nextEncodedAttribute
	| fieldsize buffer name rawValue |
	fieldsize := self nextEncodedUint32.
	buffer := ReadStream on: (stream next: fieldsize).
	name := buffer upTo: self class fieldNameSeparator.
	rawValue := buffer upToEnd.
	^ MDDSHeaderAtribute name: name asString value: rawValue asString