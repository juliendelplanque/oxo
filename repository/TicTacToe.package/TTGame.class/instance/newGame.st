resetting
newGame
	board
		ifNil:[ board := TTBoard new ].
	board reset.
	currentPlayer := player1.