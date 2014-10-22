loading
parseRosLine: aLine
	^ (aLine indexOf: $=) = 0
		ifTrue: [ self parseFieldRosLine: aLine ]
		ifFalse: [ self parseConstantRosLine: aLine ]