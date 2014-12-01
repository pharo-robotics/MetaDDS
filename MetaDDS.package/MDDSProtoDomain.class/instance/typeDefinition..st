abstract
typeDefinition: aTypeName
	^ self typeDefinition: aTypeName ifAbsent: [  self error: ' There is no type named ' , aTypeName ]