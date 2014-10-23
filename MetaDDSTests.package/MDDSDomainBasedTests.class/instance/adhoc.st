running
adhoc
| type |
	type := (MDDSTypeDescriptor domain: domain mirror  name: 'std_msgs/Int16') createType.
	^ domain createTopicNamed: '/adhoc'  type: type 