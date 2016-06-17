accessing
definition
	^ definition ifNil: [ definition := domain typeDefinition: name ]