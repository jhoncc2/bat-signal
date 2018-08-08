baselines
corePackages: spec
	spec for: #'common' do: [
		spec
			package: #'BTBot';
			package: #'BatSignal' with: [
				spec requires: #( #'DiscordSt' ). ]

	].