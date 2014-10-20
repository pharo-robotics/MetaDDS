as yet unclassified
validHeader
	| valid |
	valid := MDDSHandshakeHeader new. 
	valid md5sum: 'abc'.
	valid topic: '/test'.
	valid type: '/test_type'.
	
	^ valid. 
	