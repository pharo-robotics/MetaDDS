versions
version10: spec
	<version: '1.0' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0'.
		spec author: 'SantiagoBragagnolo'.
		spec timestamp: '12/1/2014 16:59'.
		spec 
			project: 'TaskIT' with: '1.0';
			project: 'OSProcess' with: '4.5.12';
			project: 'XMLRPC' with: '1.4-baseline';
			project: 'OrderPreservingDictionary' with: '1.2.8'.
		spec 
			package: #MetaDDS with: 'MetaDDS-SantiagoBragagnolo.40';
			package: #MetaDDSTests with: 'MetaDDSTests-SantiagoBragangolo.25'. ].
