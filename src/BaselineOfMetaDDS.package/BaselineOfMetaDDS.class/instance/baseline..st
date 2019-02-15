baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'XMLRPC'
					with: [ spec
						loads: #('All');
						repository: 'github://sbragagnolo/xmlrpc/src' ];
				baseline: 'OrderPreservingDictionary'
					with:
						[ spec repository: 'github://svenvc/XML-Support-Pharo' ];
				baseline: 'TaskIt'
					with: [ spec repository: 'github://sbragagnolo/taskit' ].
			spec
				package: #MetaDDS
					with: [ spec requires: #('TaskIt' 'XMLRPC' 'OrderPreservingDictionary') ];
				package: #MetaDDSTests.
			spec
				group: 'core' with: #(#MetaDDS);
				group: 'default' with: #(#MetaDDS #MetaDDSTests) ]