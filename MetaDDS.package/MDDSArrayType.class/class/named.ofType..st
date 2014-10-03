pseudo-dsl
named: aName ofType: aType
	^ MDDSFieldDefinition name: aName type: (self  ofType: aType forPhaROSTyping new) .