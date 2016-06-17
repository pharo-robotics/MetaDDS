as yet unclassified
shutDown: isImageQuitting
	| obsoleteDomain |
	isImageQuitting
		ifTrue: [ obsoleteDomain := MDDSObsoleteDomain new.
			(self allSubInstances do: #finalize) do: [ :d | d becomeForward: obsoleteDomain ] ]