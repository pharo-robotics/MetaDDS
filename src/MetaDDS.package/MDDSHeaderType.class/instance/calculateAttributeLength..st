as yet unclassified
calculateAttributeLength: anAttribute
	^ 4 + anAttribute name asByteArray size + anAttribute value asByteArray size + 1.
	
" Size of the encoded size of the value
the size of the name
the size of the value
the size of the = character"