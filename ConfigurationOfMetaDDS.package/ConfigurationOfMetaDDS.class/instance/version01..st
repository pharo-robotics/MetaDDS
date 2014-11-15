versions
version01: spec
	<version: '0.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 0.1'.
		spec author: 'SantiagoBragangolo'.
		spec timestamp: '11/15/2014 15:10'.
		spec 
			project: 'TaskIT' with: '1.0';
			project: 'OSProcess' with: '4.5.12';
			project: 'XMLRPC' with: '1.4-baseline';
			project: 'OrderPreservingDictionary' with: '1.2.8'.
		spec 
			package: #MetaDDS with: 'MetaDDS-SantiagoBragangolo.29';
			package: #MetaDDSTests with: 'MetaDDSTests-SantiagoBragangolo.24'. ].
