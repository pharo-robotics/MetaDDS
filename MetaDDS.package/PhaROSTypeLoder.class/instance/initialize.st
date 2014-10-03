initialization
initialize
	builtinTypes := Dictionary new.
	registry := Dictionary new.
	
	builtinTypes at: 'byte' put: (MDDSBasicTypeDefinition for:  MDDSInt8Type new).
	builtinTypes at: 'char' put: (MDDSBasicTypeDefinition for:  MDDSInt8Type new).
	builtinTypes at: 'bool' put: (MDDSBasicTypeDefinition for:  MDDSBoolType new).
	builtinTypes at: 'float32' put: (MDDSBasicTypeDefinition for:  MDDSFloat32Type new).
	builtinTypes at: 'float64' put: (MDDSBasicTypeDefinition for:  MDDSFloat64Type new).
	
	builtinTypes at: 'int8' put: (MDDSBasicTypeDefinition for:  MDDSInt8Type new).
	builtinTypes at: 'int16' put: (MDDSBasicTypeDefinition for:  MDDSInt16Type new).
	builtinTypes at: 'int32' put: (MDDSBasicTypeDefinition for:  MDDSInt32Type new).
	builtinTypes at: 'int64' put: (MDDSBasicTypeDefinition for:  MDDSInt64Type new).
	
	builtinTypes at: 'uint8' put: (MDDSBasicTypeDefinition for:  MDDSUInt8Type new).
	builtinTypes at: 'uint16' put: (MDDSBasicTypeDefinition for:  MDDSUInt16Type new).
	builtinTypes at: 'uint32' put: (MDDSBasicTypeDefinition for:  MDDSUInt32Type new).
	builtinTypes at: 'uint64' put: (MDDSBasicTypeDefinition for:  MDDSUInt64Type new).
	
	builtinTypes at: 'time' put: (MDDSBasicTypeDefinition for:  MDDSTimeType new).
	builtinTypes at: 'duration' put: (MDDSBasicTypeDefinition for:  MDDSDurationType new).
	builtinTypes at: 'string' put: (MDDSBasicTypeDefinition for:  MDDSStringType new).