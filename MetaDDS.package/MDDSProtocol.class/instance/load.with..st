as yet unclassified
load: aByteArray with: aTypeMarshaler
	^ self loadStream: (ReadStream on: aByteArray) with: aTypeMarshaler.