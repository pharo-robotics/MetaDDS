as yet unclassified
shakeHandsWith: aSocket and: aStream accordingTo: aMDDSConnectionPetition
	| rawdata recv |
	
	" Send connection headers "
	rawdata := self headerProtocol dump: (self rosheader newInstance loadFrom: aMDDSConnectionPetition).
	aSocket sendData: rawdata.
	" Recv connection headers "
	recv := self headerProtocol loadStream: aStream.
	aMDDSConnectionPetition validateHeader: recv.
	
	  