related class building
installMethodsIn: aClass

	self definition fields do: [ : field | 
		aClass compile: field setter.
		aClass compile: field getter.
		field hasToInstallHelper ifTrue: [ 
			aClass compile: field helper.
		].
	 ].
	
	aClass compile: ((self definition fields collect: #initializer) inject: 'initialize', String crlf, String tab, 'super initialize.', String crlf into:[ :acc :line | acc, line ]).
