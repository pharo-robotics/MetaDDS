as yet unclassified
getParam: aParameterName for: aCallerId


	
	^  Dictionary new.
"	| name namespace |	
	name := self resolveNameFor: aParameterName.
	namespace := parameters at: name namespace name.
	^ name isSpecific
		ifTrue: [ 
			{1.
			' Parameter '.
			(namespace at: name name)} ]
		ifFalse: [ 
			{1.
			'Namespace'.
			namespace} ]"