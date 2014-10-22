creation
publisher
	^ publisher ifNil: [ publisher := MDDSPublisher domain: domain named: name , '-publisher' on: self ]