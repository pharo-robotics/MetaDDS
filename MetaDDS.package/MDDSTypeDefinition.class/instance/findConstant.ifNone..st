find
findConstant: aFieldName ifNone: aBlockClosure 
	^ (definition select:#isConstant) detect: [ : f | f name = aFieldName  ] ifNone: aBlockClosure .