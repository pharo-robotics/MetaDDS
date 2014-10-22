as yet unclassified
nextEncodedHeader
	| headerSize backupStream header |
	headerSize := self nextEncodedUint32.
	backupStream := stream.
	header := MDDSHandshakeHeader new.
	[ 
	stream := ReadStream on: (backupStream next: headerSize).
	[ stream atEnd ] whileFalse: [ header attributes add: self nextEncodedAttribute ] ]
		ensure: [ stream := backupStream ].
	^ header