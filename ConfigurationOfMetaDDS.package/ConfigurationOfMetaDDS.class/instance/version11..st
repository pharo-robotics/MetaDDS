versions
version11: spec
	<version: '1.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.1'.
		spec author: 'SantiagoBragagnolo'.
		spec timestamp: '2/9/2015 11:34'.
		spec 
			project: 'TaskIT' with: '1.0';
			project: 'OSProcess' with: '4.5.13';
			project: 'XMLRPC' with: '1.5-baseline';
			project: 'OrderPreservingDictionary' with: '1.3.2'.
		spec 
			package: #MetaDDS with: 'MetaDDS-SantiagoBragagnolo.44';
			package: #MetaDDSTests with: 'MetaDDSTests-SantiagoBragagnolo.26'. ].
