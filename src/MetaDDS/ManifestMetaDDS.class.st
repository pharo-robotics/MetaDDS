"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestMetaDDS,
	#superclass : #PackageManifest,
	#category : 'MetaDDS'
}

{ #category : #'code-critics' }
ManifestMetaDDS class >> ruleClassNotReferencedRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#MetaDDSIdeas)) #'2016-05-31T10:44:01.613405+02:00') )
]

{ #category : #'code-critics' }
ManifestMetaDDS class >> ruleCodeCruftLeftInMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#MDDSReadingNetworkConnection #start #false)) #'2016-05-31T11:34:13.729561+02:00') #(#(#RGMethodDefinition #(#MDDSCollectionType #dataTypeSizeFor: #false)) #'2016-05-31T11:34:13.729527+02:00') #(#(#RGMethodDefinition #(#MDDSTopicConnectionDescription #validateAndProcessHeader: #false)) #'2016-05-31T11:34:13.729573+02:00') #(#(#RGMethodDefinition #(#MDDSDecoder #hasLeft: #false)) #'2016-05-31T11:34:13.729606+02:00') #(#(#RGMethodDefinition #(#MDDSWritingNetworkConnection #write:with: #false)) #'2016-05-31T11:34:13.729549+02:00') #(#(#RGMethodDefinition #(#MDDSReadingNetworkConnection #spinOnce #false)) #'2016-05-31T11:34:13.729615+02:00') #(#(#RGMethodDefinition #(#MDDSPortResolver #obtainPort #false)) #'2016-05-31T11:34:13.729592+02:00') )
]

{ #category : #'code-critics' }
ManifestMetaDDS class >> ruleImplementedNotSentRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#MDDSAbstractDomainMirror #findTopicDescriptorByName:ifFound:ifNone: #false)) #'2016-05-31T13:23:54.236669+02:00') #(#(#RGMethodDefinition #(#MDDSAbstractDomainMirror #findTopicDescriptorsByName: #false)) #'2016-05-31T13:23:54.236591+02:00') )
]

{ #category : #'code-critics' }
ManifestMetaDDS class >> ruleRBEqualsTrueRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#MDDSBoolType #isAPossibleValue: #false)) #'2016-05-31T10:59:17.871827+02:00') )
]

{ #category : #'code-critics' }
ManifestMetaDDS class >> ruleRBMissingYourselfRuleV1FalsePositive [
^ #(#(#(#RGMethodDefinition #(#MDDSReadingNetworkConnection #start #false)) #'2015-08-07T12:07:23.191003+02:00') )
]

{ #category : #'code-critics' }
ManifestMetaDDS class >> ruleSubclassResponsibilityNotDefinedRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#MDDSProtocol #name #false)) #'2016-05-31T10:44:01.121264+02:00') #(#(#RGMethodDefinition #(#MDDSConnection #isConnected #false)) #'2016-05-31T10:44:01.121432+02:00') #(#(#RGMethodDefinition #(#MDDSProtocol #createSocketForlistenOn: #false)) #'2016-05-31T10:44:01.121442+02:00') #(#(#RGMethodDefinition #(#MDDSConnection #relatedParticipantName #false)) #'2016-05-31T10:44:01.121333+02:00') #(#(#RGMethodDefinition #(#MDDSProtocol #connect: #false)) #'2016-05-31T10:44:01.121415+02:00') )
]

{ #category : #'code-critics' }
ManifestMetaDDS class >> ruleVariableReferencedOnceRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#MDDSReadingNetworkConnection #spinOnce #false)) #'2016-05-31T11:34:13.787086+02:00') )
]
