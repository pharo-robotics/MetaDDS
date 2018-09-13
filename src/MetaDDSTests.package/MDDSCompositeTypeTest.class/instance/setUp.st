as yet unclassified
setUp 

	
	typeMarshaller := (MDDSTypeDefinition named: 'testedType' defined: { 
				MDDSFieldDefinition name: #float32 type: (MDDSBasicTypeDefinition for: MDDSFloat32Type new) .
				MDDSFieldDefinition name: #int32 type: (MDDSBasicTypeDefinition for: MDDSInt32Type new) .
				MDDSFieldDefinition name: #int8 type: (MDDSBasicTypeDefinition for: MDDSInt8Type new) .
				MDDSFieldDefinition name: #uint64Array type: (MDDSBasicTypeDefinition for: (MDDSArrayType of: MDDSUInt64Type )) .
				MDDSFieldDefinition name: #int64FixedArray type: (MDDSBasicTypeDefinition for: (MDDSArrayFixedLenghtType of: 3 of: MDDSInt64Type )) 

			}) typeBuilder buildTypeMarshaller.

	protocol := MDDSProtocol encoding: MDDSEncoder decoding: MDDSDecoder.
	
	validValues := self validValues "collect: [
		:assoc |
		(self newTestedClassInstance newPacket value: assoc key; yourself  )-> assoc value.
	]".

	invalidValues := self invalidValues "collect: [
		:value |
		self newTestedClassInstance newPacket value: value ; yourself.
	]".
	
	

	