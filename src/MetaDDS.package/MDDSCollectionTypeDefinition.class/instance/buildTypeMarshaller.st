building
buildTypeMarshaller
	^ typeSerializer relatedType: (innerTypeDefinition typeBuilder buildTypeMarshaller)