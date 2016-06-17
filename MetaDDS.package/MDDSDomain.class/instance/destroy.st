accessing
destroy
	createdTopics
		valuesDo: [ :t | 
			t hasPublications
				ifTrue: [ t publisher stopPublishing ].
			t hasSubscriptions
				ifTrue: [ t subscriber unregisterAll ].
			t domain: nil.
			t type domain: nil ].
	createdTopics removeAll.
	protocols removeAll.
	announcer := nil