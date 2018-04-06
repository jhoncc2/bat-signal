baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec package: 'BatSignal'.
			spec group: 'default' with: #('BatSignal') ]