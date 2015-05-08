as yet unclassified
alphaBetaVSMinimax
	| ai1 ai2 game view |
	ai1 := TTAlphaBetaAI new useO; yourself.
	ai2 := TTMinimaxAI new useX; yourself.
	ai1 otherPlayer: ai2.
	ai2 otherPlayer: ai1.
	game := TTGame new.
	game
		player1: ai1 player2: ai2;
		newGame.

	view := game board view: game.
	view open.
	^view