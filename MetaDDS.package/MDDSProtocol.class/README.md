A protocol is a reification of the protocol it self. 
The protocol in a DDS, where connections are one way only is the combination of:
	 # The connection handshake.
	 # The way to encode each type.
	 # The way each type is structured.
By example, the TCPROS protocol
	# The connection hand shake defines the quality of service and is a two ways hand shake.
	# The way to encode each type is the standart one  (Defined in MDDSEncoder/MDDSDecoder)
	# The way to structure the data is the standar one (Defined in MDDSBaseTypeSerializer hierarchy)