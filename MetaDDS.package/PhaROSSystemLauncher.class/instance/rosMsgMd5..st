types
rosMsgMd5: aTypeId
	^ (self rosMsg: 'md5' with: aTypeId) copyReplaceAll: String lf with: ''