pseudo-dsl
named: aName sized: aSize ofType: aType
	^ MDDSFieldDefinition name: aName type: (self of: aSize ofType: aType forPhaROSTyping new) .