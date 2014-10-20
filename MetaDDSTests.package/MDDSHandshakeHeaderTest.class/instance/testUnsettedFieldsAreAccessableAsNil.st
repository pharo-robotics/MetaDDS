as yet unclassified
testUnsettedFieldsAreAccessableAsNil
	self assert: header attributes size = 0.
	self assert: header md5sum isNil.
	self assert: header topic isNil.
	self assert: header type isNil.
	