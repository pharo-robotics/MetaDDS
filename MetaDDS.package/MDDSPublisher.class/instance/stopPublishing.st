run
stopPublishing
	publications do: [ :p | self stopPublishing: p ]