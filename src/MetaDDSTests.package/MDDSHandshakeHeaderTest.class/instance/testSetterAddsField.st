as yet unclassified
testSetterAddsField
	self assert: header attributes size = 0.
	header md5sum: 'abc'.
	self assert: header attributes size = 1.
	header topic: '/test'.
	self assert: header attributes size = 2.	
	header type: '/test_type'.
	self assert: header attributes size = 3.
	