baselines
groups: spec
	spec for: #'common' do: [
		spec		
			"default"
			group: #'code' with: #( #'BatSignal' #'BTBot' #'BTDiscordAnalyzer');
			group: #'tests' with: #();
			group: #'default' with: #( #'code' #'tests' )
	].