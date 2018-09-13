constructor
on: aMirror
	| domain |
	domain := self new. 
	domain mirror: aMirror.
	aMirror domain: domain.
	^ domain.