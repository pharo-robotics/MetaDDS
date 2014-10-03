as yet unclassified
definition
	^ definition ifNil: [ definition := domain typeDefinition: name ].