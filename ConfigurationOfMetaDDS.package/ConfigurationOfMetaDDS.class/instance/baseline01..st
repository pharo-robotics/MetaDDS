baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/sbragagnolo/MetaDDS/main/'.
		spec 
			project: 'TaskIT' with: [
				spec
					className: #ConfigurationOfTaskIT;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/sbragagnolo/TaskIT/main/' ];
			project: 'OSProcess' with: [
				spec
					className: #ConfigurationOfOSProcess;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/';
					repository: 'http://www.squeaksource.com/OSProcess' ];
			project: 'XMLRPC' with: [
				spec
					className: #ConfigurationOfXMLRPC;
					versionString: #'bleedingEdge';
					loads: #('All' );
					repository: 'http://ss3.gemstone.com/ss/XMLRPC' ];
			project: 'OrderPreservingDictionary' with: [
				spec
					className: #ConfigurationOfOrderPreservingDictionary;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/PharoExtras/OrderPreservingDictionary/main/' ].
		spec 
			package: #MetaDDS with: [
				spec requires: #('TaskIT' 'XMLRPC' 'OSProcess' 'OrderPreservingDictionary' ). ];
			package: #MetaDDSTests.
		spec 
			group: 'core' with: #(#MetaDDS );
			group: 'default' with: #(#MetaDDS #MetaDDSTests ). ].
