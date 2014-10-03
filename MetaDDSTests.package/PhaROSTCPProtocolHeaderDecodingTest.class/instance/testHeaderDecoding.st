as yet unclassified
testHeaderDecoding
	| decodedMessage |
	decodedMessage := tcpProtocol headerProtocol load: self messageByteArray.
	self assert:  header = decodedMessage 