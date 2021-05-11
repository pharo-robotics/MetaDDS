Class {
	#name : #MDDSObsoleteDomain,
	#superclass : #Object,
	#category : 'MetaDDS-Kernel'
}

{ #category : #'reflective operations' }
MDDSObsoleteDomain >> doesNotUnderstand: aMessage [
	self error: ' The domain has been killed during the last image shutdown '
]
