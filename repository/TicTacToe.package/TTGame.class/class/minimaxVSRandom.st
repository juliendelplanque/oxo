as yet unclassified
minimaxVSRandom
	| ai1 ai2 game view |
	ai1 := TTMinimaxAI new useO; yourself.
	ai2 := TTRandomAI new useX; yourself.
	ai1 otherPlayer: ai2.
	game := TTGame new.
	game
		player1: ai1 player2: ai2;
		newGame.

	view := game board view: game.
	view open.
	^view