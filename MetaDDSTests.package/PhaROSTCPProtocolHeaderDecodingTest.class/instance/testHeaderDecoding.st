as yet unclassified
testHeaderDecoding
	| decodedMessage |
	decodedMessage := tcpProtocol headerProtocol load: self messageByteArray with: tcpProtocol rosheader.
	self assert:  header = decodedMessage 