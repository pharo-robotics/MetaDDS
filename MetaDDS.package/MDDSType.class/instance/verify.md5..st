accessing
verify: aTypeName md5: aMd5Sum
	^ self name = aTypeName and: [ self md5sum isNil or: [ self md5sum = aMd5Sum ] ]