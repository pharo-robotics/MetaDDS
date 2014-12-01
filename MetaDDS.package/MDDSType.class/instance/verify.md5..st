accessing
verify: aTypeName md5: aMd5Sum
	^ aTypeName isEmpty
		or: [ aMd5Sum isEmpty or: [ self name = aTypeName and: [ self md5sum isEmpty  or: [ self md5sum = aMd5Sum ] ] ] ]