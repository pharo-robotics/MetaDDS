versions
version14: spec
	<version: '1.4' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.4'.
		spec author: 'SantiagoBragagnolo'.
		spec timestamp: '8/3/2015 12:19'.
		spec 
			project: 'OSProcess' with: '4.6.4';
			project: 'XMLRPC' with: '1.5-baseline';
			project: 'OrderPreservingDictionary' with: '1.3.3';
			project: 'TaskIT2' with: '0.1'.
		spec 
			package: #MetaDDS with: 'MetaDDS-SantiagoBragagnolo.62';
			package: #MetaDDSTests with: 'MetaDDSTests-SantiagoBragagnolo.26'. ].
