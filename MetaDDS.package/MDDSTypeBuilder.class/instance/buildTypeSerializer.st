building
buildTypeSerializer
	^ (MDDSCompositeType 	named: self name 
								definedBy: definition fields
								withConstants: definition constants) relatedClass: self relatedClass; yourself.