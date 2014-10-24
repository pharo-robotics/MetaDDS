running
adhocType
	" The name is just to show that we can use the same name specification as in ROS but in Pharo. For Pharo it self it does not make much sense, since there is not a concept of installed packages or related namespace "
	^ MDDSTypeDefinition named: 'std_msgs/Int16' defined: { 
				MDDSFieldDefinition name: #data type: (MDDSBasicTypeDefinition for: MDDSInt16Type new) .
	}.
	
	