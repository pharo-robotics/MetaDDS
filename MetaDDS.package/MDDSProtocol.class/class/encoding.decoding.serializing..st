as yet unclassified
encoding: anEncoder decoding: aDecoder serializing: aTypeSerializer
	^ self new encoder: anEncoder ; decoder: aDecoder ; serializer: aTypeSerializer ; yourself.
	