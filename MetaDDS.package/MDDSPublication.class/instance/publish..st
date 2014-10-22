accessing
publish: aBlock
	interested size > 0
		ifTrue: [ 
			| value |
			value := self marshaller newInstance.
			aBlock value: value.
			self publishValue: value ]