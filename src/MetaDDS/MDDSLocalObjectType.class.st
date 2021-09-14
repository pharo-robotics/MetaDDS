"
I represent an object of what-ever class. 
I do not do marshalling, i only allow the local communication of objects instead of marshalled structrues
"
Class {
	#name : #MDDSLocalObjectType,
	#superclass : #MDDSBaseTypeMarshaller,
	#instVars : [
		'type'
	],
	#category : #'MetaDDS-TypesMarshalling'
}

{ #category : #generated }
MDDSLocalObjectType class >> type: aClass [

	^ self new
		  type: aClass;
		  yourself
]

{ #category : #accessing }
MDDSLocalObjectType >> decode: aFLDecoder [ 
	self error: 'Error no decode'
]

{ #category : #accessing }
MDDSLocalObjectType >> encode: aFLEncoder [ 
	self error: 'Error no decode'
]

{ #category : #testing }
MDDSLocalObjectType >> isAPossibleValue: aValue [
	^ aValue isKindOf: type. 
]

{ #category : #accessing }
MDDSLocalObjectType >> newInstance [ 
	self error: 'Use publishValue'
]

{ #category : #accessing }
MDDSLocalObjectType >> serialize: aValue into: anEncoder [

	^ self error: 'Error objects are not serializable'
]

{ #category : #initializing }
MDDSLocalObjectType >> setEncodeDecodeSelectors [

	"Non "

	
]

{ #category : #accessing }
MDDSLocalObjectType >> type: aType [ 
	type := aType 
]

{ #category : #accessing }
MDDSLocalObjectType >> typeName [
	^ type name 
]
