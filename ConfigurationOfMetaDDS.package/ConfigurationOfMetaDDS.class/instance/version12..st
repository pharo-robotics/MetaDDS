versions
version12: spec
	<version: '1.2' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.2'.
		spec author: 'SantiagoBragagnolo'.
		spec timestamp: '4/30/2015 14:25'.
		spec 
			project: 'TaskIT' with: '1.0';
			project: 'OSProcess' with: '4.6.2';
			project: 'XMLRPC' with: '1.5-baseline';
			project: 'OrderPreservingDictionary' with: '1.3.3'.
		spec 
			package: #MetaDDS with: 'MetaDDS-SantiagoBragagnolo.59';
			package: #MetaDDSTests with: 'MetaDDSTests-SantiagoBragagnolo.26'. ].
