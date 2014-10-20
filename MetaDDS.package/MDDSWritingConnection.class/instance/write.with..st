as yet unclassified
write: aDataValue with: aMarshaller
	" there are several scenarios where the data is not much per cycle and is sent several times per second. For this cases (sensors) having a batched writing may  be a great enhancement "
	self flag: #performance.
	socket sendData: (protocol dump: aDataValue with: aMarshaller).