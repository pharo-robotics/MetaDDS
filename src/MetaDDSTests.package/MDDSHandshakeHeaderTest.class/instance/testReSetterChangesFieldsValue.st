as yet unclassified
testReSetterChangesFieldsValue
	
	header md5sum: 'abc'.
	self assert: header md5sum = 'abc'.
	header md5sum: 'abc2'.
	self assert: header md5sum = 'abc2'.
	header topic: '/test'.
	self assert: header topic = '/test'.
	header topic: '/test2'.
	self assert: header topic = '/test2'.
	header type: '/test_type'.
	self assert: header type = '/test_type'.
	header type: '/test_type2'.
	self assert: header type = '/test_type2'.
