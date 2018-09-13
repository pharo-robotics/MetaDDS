Represents the subscription to a topic. 
There is just one subscriber per topic, It handles allt the needed subscriptions.

subscriber := topic subscriber.
subscription := subscriber onRead: [ : val |  ] onFailure: [ :fail | ] onStop:["" ].

subcription := subcriber subscribe.

subscription := topic onRead: [ : val |  ]; onFailure: [ :fail | ]; onStop:["" ].


subscription cancel.
				
			
topic