baselines
corePackages: spec
	spec for: #'common' do: [
		spec
			package: #'BTBot';
			package: #'BTExpertise-Finders';
			package: #'BTDiscordAnalyzer';
			package: #'BatSignal' with: [
				spec requires: #( #'DiscordSt' ). ]

	].