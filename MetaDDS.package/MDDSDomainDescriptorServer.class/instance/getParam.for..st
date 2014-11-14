as yet unclassified
getParam: aCallerId for: aParameterName
	^ (parameters lookupParameterInPath: (MDDSParameterPath fromRos: aCallerId and: aParameterName)) value