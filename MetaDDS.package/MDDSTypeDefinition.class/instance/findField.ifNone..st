find
findField: aFieldName ifNone: aBlockClosure 
	^ (definition select:#isField) detect: [ : f | f name = aFieldName  ] ifNone: aBlockClosure .