as yet unclassified
plainTypeDefinitionFor: aType
	
	^ String
		streamContents: [ :stream | 
			STON writer
				on: stream;
				nextPut: (self typeDefinition: aType name) ]