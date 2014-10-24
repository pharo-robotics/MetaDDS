as yet unclassified
initialize
	super initialize.
	exposures := Set new.
	portResolver  := MDDSPortResolver obtain.
	registeredTopics := Set new