message-dispatching
dispatch: aReceivedMessage
	subscriptions do: [ :each | each noteNewMessage: aReceivedMessage ].