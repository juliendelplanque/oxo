game
nextStep
	board isGameFinished ifFalse: [
		currentPlayer play: board.
		self changePlayer
	]