as yet unclassified
buildTypeMarshaller
	^ typeSerializer relatedType: (innerTypeDefinition typeBuilder buildTypeMarshaller)