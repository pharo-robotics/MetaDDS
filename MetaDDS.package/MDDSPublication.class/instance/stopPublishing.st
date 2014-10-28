accessing
stopPublishing
	connections do: #destroy.
	connections removeAll.
	servers do: #stop.
	servers removeAll.
	marshaller := nil.
	connectionOffer := nil