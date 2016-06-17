converting
rosdefinition 
	^ ' {1} {2}={3}' format: { self typeDefinition typeName . name . self valueForGeneration }.