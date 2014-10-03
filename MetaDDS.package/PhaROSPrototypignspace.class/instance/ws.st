as yet unclassified
ws
| mirror domain participant adhoc |

mirror := MDDSRemoteDomainMirror onROS: 'http://dora:11311/'.
domain := mirror domain. 
participant := MDDSDomainParticipant domain: domain name: 'adhoc-participant'.
adhoc := MDDSTopic domain: domain name: '/adhoc'  type: 'std_msgs/Int16'. 
adhoc subscriber forParticipant: participant onRead: [ 
 : packet |
	self halt. 	
 ]


MDDSProtoDomain  allSubInstances.
XMLRPCService stop: 9999.
20 timesRepeat: [  Smalltalk garbageCollect  ].
