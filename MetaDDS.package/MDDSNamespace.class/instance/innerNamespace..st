accessing
innerNamespace: aName
	^ namespaces at: aName ifAbsentPut: [  MDDSNamespace domain: domain name: aName parent: self ].
	
