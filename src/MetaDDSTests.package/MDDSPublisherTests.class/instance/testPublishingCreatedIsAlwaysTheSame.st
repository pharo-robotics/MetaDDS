as yet unclassified
testPublishingCreatedIsAlwaysTheSame
	| publicationA publicationB |
	
	publicationA := publisher publishing: participant.
	publicationB := publisher publishing: participant.
	
	self assert: publicationA == publicationB