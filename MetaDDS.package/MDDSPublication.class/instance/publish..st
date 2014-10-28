accessing
publish: aBlock
	connections size > 0
		ifTrue: [ 
			| value |
			value := self marshaller newInstance.
			aBlock value: value.
			self publishValue: value ]