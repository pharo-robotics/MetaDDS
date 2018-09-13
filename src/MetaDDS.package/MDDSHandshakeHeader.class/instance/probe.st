as yet unclassified
probe
	^ ((self attribute: 'probe') value ifNil: [ 0 ]) asInteger