as yet unclassified
actions
	|symbole actions|
	symbole := self playerForNextRound oppositeSymbole.
	actions := OrderedCollection new.
	board emptyBoxes do: [ :emptyBoxIndex |
		actions add: (TTAction forBox: emptyBoxIndex withContent: symbole ) ].
	^ actions