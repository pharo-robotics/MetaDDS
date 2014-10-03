as yet unclassified
topics
	^ (rosproxy getTopicTypes: self queryid) collect: [ : array | 
			MDDSTopicDescriptor name: (array at: 1) type: (MDDSTypeDescriptor named: (array at: 2)).
	].