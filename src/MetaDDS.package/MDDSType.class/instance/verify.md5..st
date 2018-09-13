accessing
verify: aTypeName md5: aMd5Sum
	^ aTypeName isEmptyOrNil
		or:
			[ (aMd5Sum isEmpty or: [ aMd5Sum = '*' ])
				or:
					[ self name = aTypeName
						and: [ self md5sum isEmpty or: [ self md5sum = aMd5Sum ] ] ] ]