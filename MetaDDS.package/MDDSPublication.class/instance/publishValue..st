accessing
publishValue: aValue
	interested do: [ : writingConnection  | 
		writingConnection write: aValue with: self marshaller
	]