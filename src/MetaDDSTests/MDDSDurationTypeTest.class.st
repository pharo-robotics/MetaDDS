Class {
	#name : #MDDSDurationTypeTest,
	#superclass : #MDDSTypeMarshallingBaseTest,
	#category : 'MetaDDSTests-ProtocolSerializing'
}

{ #category : #'as yet unclassified' }
MDDSDurationTypeTest >> invalidByteArrays [
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
MDDSDurationTypeTest >> invalidValues [ 
	^ {
		-128 .   'a string' .  -1 . 4294967296 . (Duration seconds: 4294967298) 
	}.

]

{ #category : #'as yet unclassified' }
MDDSDurationTypeTest >> relatedClass [ 
	^MDDSDurationType 
]

{ #category : #'as yet unclassified' }
MDDSDurationTypeTest >> testFailSerialize [
				^ super baseFailSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSDurationTypeTest >> testSerialize [
		^ super baseSerialize.
		
]

{ #category : #'as yet unclassified' }
MDDSDurationTypeTest >> testUnserialize [
				^ super baseUnserialize.
		
]

{ #category : #'as yet unclassified' }
MDDSDurationTypeTest >> testUnserializeFail [
				^ super baseUnserializeFail.
		
]

{ #category : #'as yet unclassified' }
MDDSDurationTypeTest >> validValues [ 
	^ {
		(Duration new seconds: 1 nanoSeconds: 0; yourself)  -> #[ 8 0 0 0 1 0 0 0 0 0 0 0 ] .
		(Duration new seconds: 4294967295 nanoSeconds: 4294967295; yourself)  -> #[ 8 0 0 0 255 255 255 255 255 255 255 255] .
		(Duration new seconds: 4294967295 nanoSeconds: 0; yourself)  -> #[ 8 0 0 0 255 255 255 255 0 0 0 0] .
	}.
]
