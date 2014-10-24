as yet unclassified
publisher
"SUBSCRIBER"

| domain mirror participant type adhoc subscription in |
domain := MDDSExternallyDefinedDomain onROS: 'http://127.0.0.1:11311/'.
mirror := domain mirror . 


participant := MDDSDomainParticipant domain: domain name: 'adhoc-participant' ip: '127.0.0.1'.

type :=  MDDSTypeDescriptor domain: domain name: 'std_msgs/Int16'.

adhoc := (MDDSTopicDescriptor domain: domain name: '/adhoc'  type: type) createTopic.

domain addProtocol: (PhaROSTCPProtocol encoding: MDDSEncoder  decoding: MDDSDecoder).


subscription := adhoc subscriber forParticipant: participant onRead: [ 
 : packet |
	self halt. 	
 ].


in := PhaROSParticipantProxy on: 'http://127.0.0.1:10000'. 


in nodeproxy requestFor: ' name 'theTopic: '/adhoc' withProtocol: { 'TCPROS'}. 


type := subscription := mirror := domain := participant := adhoc := nil.

XMLRPCService stopAll.

TKTRunner allSubInstances do: #cancel.





MDDSPublication allInstances
 do:#stopPublishing.
MDDSPublicationServer allInstances do:#stop.
PhaROSParticipantExposure allInstances do:#unexpose.
Socket allInstances do: #destroy.

MDDSEntity allSubInstances
 do: [ :e | e domain: nil].

MDDSReadingNetworkConnection allInstances 
do: #destroy.


30 timesRepeat: [  Smalltalk garbageCollect  ].

