as yet unclassified
domain: aDomain name: aName ip: anIp
	^ (super domain: aDomain name: aName) ip: (NetNameResolver addressFromString: anIp); yourself.