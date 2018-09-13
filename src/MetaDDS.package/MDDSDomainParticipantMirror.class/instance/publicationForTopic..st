as yet unclassified
publicationForTopic: aTopic
	^ aTopic publications detect: [ :s | s participant = participant ]. 
	