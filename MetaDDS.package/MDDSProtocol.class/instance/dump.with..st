as yet unclassified
dump: aValue with: aTypeMarshaller
	| stream anEncoder buffer valueSize |
	valueSize := aTypeMarshaller dataTypeSizeFor: aValue.
	buffer :=  ByteArray new: valueSize + 4.
	stream := WriteStream on: buffer.
	anEncoder  := encoder on: stream.
	anEncoder encodeInt32: valueSize.
	aTypeMarshaller serialize: aValue into: anEncoder.
	^ buffer.