baselines
groups: spec
	spec for: #'common' do: [
		spec		
			"default"
			group: #'code' with: #( #'BatSignal' #'BTBot' #'BTDiscordAnalyzer' #'BTExpertise-Finders');
			group: #'tests' with: #();
			group: #'default' with: #( #'code' #'tests' )
	].