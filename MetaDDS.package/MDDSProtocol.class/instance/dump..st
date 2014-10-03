as yet unclassified
dump: aValue
	| stream anEncoder buffer valueSize |
	valueSize := serializer dataTypeSizeFor: aValue.
	buffer :=  ByteArray new: valueSize + 4.
	stream := WriteStream on: buffer.
	anEncoder  := encoder on: stream.
	anEncoder encodeInt32: valueSize.
	serializer serialize: aValue into: anEncoder.
	^ buffer.