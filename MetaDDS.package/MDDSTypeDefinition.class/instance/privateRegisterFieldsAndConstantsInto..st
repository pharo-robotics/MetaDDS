as yet unclassified
privateRegisterFieldsAndConstantsInto: aTypeLoader
	self constants do: [ : constant | constant typeDefinition beRegisteredBy: aTypeLoader  ].
	self fields do: [ :field | field typeDefinition beRegisteredBy: aTypeLoader  ].
