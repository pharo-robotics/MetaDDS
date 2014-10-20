accessing
publishValue: aValue
	| deathConnections |
	deathConnections := Set new.
	
	interested do: [ : writingConnection  | 
		[ 
			writingConnection write: aValue with: self marshaller			
		] on: Error do: [ 
			writingConnection isDead ifTrue:[
				deathConnections add: writingConnection. 
			].
		]		
	 ].

	interested removeAll: deathConnections.

	 