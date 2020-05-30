Class {
	#name : #MDDSTimeTypeTest,
	#superclass : #MDDSTypeMarshallingBaseTest,
	#category : 'MetaDDSTests-ProtocolSerializing'
}

{ #category : #'as yet unclassified' }
MDDSTimeTypeTest >> invalidByteArrays [
	^ {
		 #[] .
		 '#[]' asByteArray .
		#[ 0 0 0].
		#[ 0 0 0 0] .
		#[ 0 0 0 0 0 0 0] .
		65536 asByteArray 
	}.
]

{ #category : #'as yet unclassified' }
MDDSTimeTypeTest >> invalidValues [ 
	^ {
		-128 .   'a string' .  -1 . 4294967296 . (Time new seconds: 4294967298; yourself) .  (Time new seconds:0 nanoSeconds: 4294967298; yourself)
	}.

]

{ #category : #'as yet unclassified' }
MDDSTimeTypeTest >> relatedClass [ 
	^ MDDSTimeType 
]

{ #category : #'as yet unclassified' }
MDDSTimeTypeTest >> testFailSerialize [
				^ super baseFailSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSTimeTypeTest >> testSerialize [
	
	"	^ super baseSerialize.
	"	
	self flag: #implementWorkingtest
]

{ #category : #'as yet unclassified' }
MDDSTimeTypeTest >> testUnserialize [
	^ super baseUnserialize.
		
]

{ #category : #'as yet unclassified' }
MDDSTimeTypeTest >> testUnserializeFail [
				^ super baseUnserializeFail.
		
]

{ #category : #'as yet unclassified' }
MDDSTimeTypeTest >> validValues [ 
	^ {
		(MDDSTimestamp new)  -> #[8 0 0 0 0 0 0 0 0 0 0 0] .
"		(PhaROSTimestamp new seconds: 4294967295 nanoSeconds: 4294967295; yourself)  -> #[8 0 0 0 252 17 164 24 255 255 255 255].
		(PhaROSTimestamp new seconds: 4294967295 nanoSeconds: 0; yourself)  -> #[8 0 0 0 1 18 164 24 0 0 0 0].
		(PhaROSTimestamp new seconds: 0 nanoSeconds: 4294967295; yourself)  -> #[8 0 0 0 251 17 164 24 255 255 255 255].
"	}.
	

]
