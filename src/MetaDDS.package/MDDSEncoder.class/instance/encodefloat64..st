encoding
encodefloat64: aFloat64
	| encoded aFloat |
	aFloat := aFloat64 asFloat.
	encoded := ByteArray new: 8.
	encoded at: 1 put: ((aFloat basicAt: 2) byteAt: 1).
	encoded at: 2 put: ((aFloat basicAt: 2) byteAt: 2).
	encoded at: 3 put: ((aFloat basicAt: 2) byteAt: 3).
	encoded at: 4 put: ((aFloat basicAt: 2) byteAt: 4).
	encoded at: 5 put: ((aFloat basicAt: 1) byteAt: 1).
	encoded at: 6 put: ((aFloat basicAt: 1) byteAt: 2).
	encoded at: 7 put: ((aFloat basicAt: 1) byteAt: 3).
	encoded at: 8 put: ((aFloat basicAt: 1) byteAt: 4).
	stream nextPutAll: encoded


	"encoded := ByteArray readHexFrom: (PDRConverter as64BitsHexStringFromFloat: aFloat).
	stream nextPutAll: encoded."