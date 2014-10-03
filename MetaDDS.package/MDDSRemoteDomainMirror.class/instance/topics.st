accessing
topics
	^ proxy topics  do: [ : topicMirror |
		topicMirror domain: self.
	   ].