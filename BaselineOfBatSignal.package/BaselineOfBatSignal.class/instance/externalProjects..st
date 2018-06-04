baselines
externalProjects: spec
	spec for: #'common' do: [
		spec
			baseline: 'DiscordSt' with: [ 
				spec
					repository: 'github://JurajKubelka/DiscordSt/src';
					loads: #default ];
			"Deprecated dependencies"
			baseline: 'ExpertiseMetricsPharo' with: [ 
				spec
					repository: 'github://jhoncc2/expertise-metrics-pharo/src';
					loads: #default ].
	].