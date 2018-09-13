as yet unclassified
setUp
	super setUp.
	MDDSTimestamp initialize.
	typeMarshaller := self newTestedClassInstance.
	protocol := MDDSProtocol encoding: MDDSEncoder decoding: MDDSDecoder.
	
	validValues := self validValues." collect: [
		:assoc |
		(self newTestedClassInstance newPacket value: assoc key; yourself  )-> assoc value.
	].
"
	invalidValues := self invalidValues.  "collect: [
		:value |
		self newTestedClassInstance newPacket value: value ; yourself.
	]."
	
	

	







