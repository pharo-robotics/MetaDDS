registry
unregisterAll
	subscriptions do: [ :s | self unregister: s ].