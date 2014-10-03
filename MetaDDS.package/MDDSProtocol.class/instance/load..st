as yet unclassified
load: aByteArray
	^ self loadStream: (ReadStream on: aByteArray).