as yet unclassified
setUp
	super setUp.
	MDDSTimestamp initialize.
	protocol := MDDSProtocol encoding: MDDSEncoder decoding: MDDSDecoder serializing: self newTestedClassInstance.

	validValues := self validValues." collect: [
		:assoc |
		(self newTestedClassInstance newPacket value: assoc key; yourself  )-> assoc value.
	].
"
	invalidValues := self invalidValues.  "collect: [
		:value |
		self newTestedClassInstance newPacket value: value ; yourself.
	]."
	
	

	







