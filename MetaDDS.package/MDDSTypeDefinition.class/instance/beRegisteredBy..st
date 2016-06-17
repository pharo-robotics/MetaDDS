accessing
beRegisteredBy: aTypeLoader
	self privateRegisterFieldsAndConstantsInto: aTypeLoader.
	^ aTypeLoader privateRegisterTypeDefinition: self