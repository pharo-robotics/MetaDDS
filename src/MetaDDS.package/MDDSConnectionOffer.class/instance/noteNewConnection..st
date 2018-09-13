as yet unclassified
noteNewConnection: aConnection
	onNewConnection ifNotNil: [ onNewConnection value: aConnection ].
	^ aConnection