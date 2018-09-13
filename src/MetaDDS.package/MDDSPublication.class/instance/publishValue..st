accessing
publishValue: aValue
	| deathConnections |
	deathConnections := Set new.
	connections
		do: [ :writingConnection | 
			[ writingConnection write: aValue with: self marshaller ]
				on: Error
				do: [ 
					writingConnection isDead
						ifTrue: [ deathConnections add: writingConnection ] ] ].
	connections removeAll: deathConnections