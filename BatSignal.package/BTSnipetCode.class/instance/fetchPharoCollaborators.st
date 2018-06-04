as yet unclassified
fetchPharoCollaborators
	"requires that you are logged-in to Discord via DSClient"
	^ (DSClient default servers named: 'Pharo') members