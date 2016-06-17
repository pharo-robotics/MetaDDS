notifications
noteIsNotRegisteredAnymore
	connections do: #destroy.
	connections removeAll.
	marshaller := nil.
	connectionOffer := nil