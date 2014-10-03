as yet unclassified
assertEncodedEqualsExpectedInLast: netSize ofFirstElements: rawSize
	| encoded expected |

	encoded := ((tcpProtocol headerProtocol dump: header ) first:  rawSize) last: netSize.
	expected := (self expectedByteArray first:  rawSize) last: netSize.
	self assert: encoded = expected