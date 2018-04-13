baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec package: 'Expertise-PharoChanges-Calculator';
			package: 'Expertise-PharoChanges-DiscordBot';
			package: 'Expertise-PharoChanges-Reader';
			package: 'Expertise-PharoChanges-ReaderTests'.
			spec group: 'default' with: #('Expertise-PharoChanges-Calculator'.
				'Expertise-PharoChanges-DiscordBot'
				'Expertise-PharoChanges-Reader'
				'Expertise-PharoChanges-ReaderTests') ]