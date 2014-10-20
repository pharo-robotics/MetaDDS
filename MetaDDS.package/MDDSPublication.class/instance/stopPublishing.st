accessing
stopPublishing
	servers do: #stop.
	servers removeAll.
	
	publisher removePublication: self.
	publisher := nil.
	participant := nil.
	marshaller := nil.