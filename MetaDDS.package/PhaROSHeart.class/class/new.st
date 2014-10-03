as yet unclassified
new
	| heart beater | 	
	heart := super new.
	beater  := ([ 
		heart  goLive.
	] asTaskAt: Processor systemBackgroundPriority ) shootIt asStickyReference.
	heart beater: beater.
	^ heart.