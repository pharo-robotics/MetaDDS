loading
parseConstantRosLine: aLine
	| typeLine |
	typeLine := $= split: aLine.
	^ (self parseItemRosLine: (typeLine at: 1) into: MDDSConstantDefinition)
		value: (typeLine at: 2);
		yourself