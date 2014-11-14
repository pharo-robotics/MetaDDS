as yet unclassified
createParameterOn: aNamespace
	| parameter |
	parameter := MDDSParameter domain: aNamespace domain name: parameterName. 
	(self fetchNamespaceFrom: aNamespace) addParameter: parameter.
	
	^ parameter 