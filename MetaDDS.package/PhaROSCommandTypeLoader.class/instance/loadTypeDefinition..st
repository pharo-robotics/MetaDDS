loading
loadTypeDefinition: aTypeId 
	| firstLevel type |
	firstLevel := (Character lf split:( PhaROSSystemLauncher instance rosMsgShow: aTypeId ) ) select: [ :str | (str beginsWith: ' ') not & (str size > 3) ] .			
	type := self typeNamed: aTypeId for: firstLevel.
	
	type md5sum: (PhaROSSystemLauncher instance rosMsgMd5: aTypeId ).
	
	^ type