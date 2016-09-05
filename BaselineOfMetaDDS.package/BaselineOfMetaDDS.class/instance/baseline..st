baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				project: 'OSProcess'
					with: [ spec
						className: #ConfigurationOfOSProcess;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/';
						repository: 'http://www.squeaksource.com/OSProcess' ];
				project: 'XMLRPC'
					with: [ spec
						className: #ConfigurationOfXMLRPC;
						versionString: #bleedingEdge;
						loads: #('All');
						repository: 'http://ss3.gemstone.com/ss/XMLRPC' ];
				project: 'OrderPreservingDictionary'
					with: [ spec
						className: #ConfigurationOfOrderPreservingDictionary;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/OrderPreservingDictionary/main/' ];
				baseline: 'TaskIt'
					with: [ spec
						repository: 'github://sbragagnolo/taskit' ].
			spec
				package: #MetaDDS with: [ spec requires: #('TaskIt' 'XMLRPC' 'OSProcess' 'OrderPreservingDictionary') ];
				package: #MetaDDSTests.
			spec
				group: 'core' with: #(#MetaDDS);
				group: 'default' with: #(#MetaDDS #MetaDDSTests) ]