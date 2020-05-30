"
A PhaROSCompositeType is a composition of basic types. Defining this way structures
"
Class {
	#name : #MDDSCompositeType,
	#superclass : #MDDSBaseTypeMarshaller,
	#instVars : [
		'typeName',
		'typeDefinition',
		'relatedClass',
		'constants'
	],
	#classInstVars : [
		'types'
	],
	#category : 'MetaDDS-TypesMarshalling'
}

{ #category : #construction }
MDDSCompositeType class >> named: aByteString [
	
	^ super new typeName: aByteString ; yourself
]

{ #category : #construction }
MDDSCompositeType class >> named: aByteString definedBy: anArray withConstants: aConstantsArray [.
	^ (self named: aByteString) useTypeDefinition:  anArray ; useConstants: aConstantsArray yourself.
]

{ #category : #construction }
MDDSCompositeType class >> new [
	self error: 'You must use at least #named: construction method'.
]

{ #category : #'pseudo-dsl' }
MDDSCompositeType class >> registerAlterName [ 
	"Do not apply"
]

{ #category : #accessing }
MDDSCompositeType >> constants [ 
	^ constants ifNil: [ constants := Dictionary new ].
]

{ #category : #accessing }
MDDSCompositeType >> dataTypeSize [
	"beware of recursive structures!"
	
	^ typeDefinition values inject:0 into:[ :acc :t | acc + t dataTypeSize ].
]

{ #category : #accessing }
MDDSCompositeType >> dataTypeSizeFor: aValue [ 
	"beware of recursive structures!"
	| acc |
	acc := 0.
	
	typeDefinition keysAndValuesDo:[ :attributeName :type |
			acc := acc + (type dataTypeSizeFor: (aValue perform: attributeName asSymbol)).
	 ].

	^ acc.
]

{ #category : #serialize }
MDDSCompositeType >> decode: aFLDecoder [ 
	| instance |
	instance := self relatedClass new.
	self typeDefinition keysAndValuesDo:  [ :name :type |
		instance at: name put: (type decode: aFLDecoder).
	].
	^ instance.
]

{ #category : #accessing }
MDDSCompositeType >> defaultValueString [
	 ^ relatedClass name , ' new'



]

{ #category : #'meta-data' }
MDDSCompositeType >> dependencies [ 

	| return packageName packageNameType |
	
	"
		dependencies are related with the package owner of each type. 
		The dependencies exists if the type related with the type is package type (std_msg/Int32 by example.) but no the basic types as Int32 it self. Check more in the type definition in the documentation of ROS
		
		int32 val
		std_msgs/Header
		
		int this case, int32 does not imply any dependency, but Header indeed it mean it. 
	"
	
	return := Set new.
	packageName := (( '/' split: self typeName ) at: 1).
	
	typeDefinition keysAndValuesDo: [:k :v | 
		 packageNameType := ( '/' split: v typeName ) .
		packageNameType size > 1 ifTrue: [
			packageNameType := packageNameType at:1 .
			packageNameType = packageName ifFalse: [
				return add: packageNameType.
		 	].		
		]
	].
	^ return.

]

{ #category : #serializing }
MDDSCompositeType >> doItSilently: aBlock [
	aBlock value.

]

{ #category : #initialization }
MDDSCompositeType >> initialize [ 
	"attribute's name  => attribute's type"
	typeDefinition := OrderPreservingDictionary new.
	constants := Dictionary new.
]

{ #category : #testing }
MDDSCompositeType >> isAPossibleSize: aSize [
	^ true.
]

{ #category : #testing }
MDDSCompositeType >> isAPossibleValue: aValue [
	^ aValue isBasic not.
]

{ #category : #testing }
MDDSCompositeType >> isZeroSized [
	^ typeDefinition size = 0
]

{ #category : #'instance creation' }
MDDSCompositeType >> new [ 
	^ self.
]

{ #category : #'instance creation' }
MDDSCompositeType >> newInstance [ 
	^ self relatedClass new.
]

{ #category : #accessing }
MDDSCompositeType >> relatedClass [
	^ relatedClass
]

{ #category : #accessing }
MDDSCompositeType >> relatedClass: aClass [
	relatedClass := aClass.
]

{ #category : #accessing }
MDDSCompositeType >> serialize:aValue into: aFLEncoder [ 
	^ self typeDefinition keysAndValuesDo:  [ :name :type |
		type serialize: (aValue getAt: name) into: aFLEncoder.
	].
	

]

{ #category : #initializing }
MDDSCompositeType >> setEncodeDecodeSelectors [ 
	
]

{ #category : #accessing }
MDDSCompositeType >> typeDefinition [ 
	^typeDefinition 
]

{ #category : #accessing }
MDDSCompositeType >> typeName [ 
	^typeName.
]

{ #category : #accessing }
MDDSCompositeType >> typeName: aTypeName [
	typeName := aTypeName.
]

{ #category : #'initialize-release' }
MDDSCompositeType >> useConstants: aConstantsArray [ 
	aConstantsArray do: [ : constant |
		self constants at: constant name put: constant value.
	]
	
]

{ #category : #'initialize-release' }
MDDSCompositeType >> useTypeDefinition: anArrayOfFields [
	anArrayOfFields do: [ : field |
		
		typeDefinition at: field name put: field type.
	]
	
]
