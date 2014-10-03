as yet unclassified
manage: anURLSet for: aSubscriber with: aParticipantMirror in: aDomain
	
	anURLSet reject:[ : url | 
				(self isBlacklistedUrl: url )or: [ 
					aSubscriber connections anySatisfy: [ : con | con urlrpc = url ]
				]
			   ] thenDo:[ : url | 
				self connect: url to: aSubscriber for: aParticipantMirror in: aDomain.
			]. 