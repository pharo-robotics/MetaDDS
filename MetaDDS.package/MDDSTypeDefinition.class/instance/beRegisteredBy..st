as yet unclassified
beRegisteredBy: aTypeLoader
	self constants do: [ : constant | constant typeDefinition beRegisteredBy: aTypeLoader  ].
	self fields do: [ :field | field typeDefinition beRegisteredBy: aTypeLoader  ].
	^ aTypeLoader privateRegisterTypeDefinition: self.
	