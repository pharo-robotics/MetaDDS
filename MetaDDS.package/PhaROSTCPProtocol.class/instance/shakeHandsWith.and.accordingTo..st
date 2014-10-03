as yet unclassified
shakeHandsWith: aSocket and: aStream accordingTo: aMDDSConnectionPetition
	| rawdata recv |
	
	" Send connection headers "
	rawdata := self headerProtocol dump: (self rosheader newInstance loadFrom: aMDDSConnectionPetition) with: self rosheader.
	aSocket sendData: rawdata.
	" Recv connection headers "
	recv := self headerProtocol loadStream: aStream with: self rosheader.
	aMDDSConnectionPetition validateHeader: recv.
	
	  