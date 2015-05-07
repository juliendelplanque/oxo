tests-game
testChangePlayer
	|game ia1 ia2 |
	ia1 := TTMinimaxAI withO.
	ia2 := TTMinimaxAI withX.
	game := TTGame new player1: ia1 player2: ia2.
	game newGame.
	
	self assert: game currentPlayer equals: ia1.
	game changePlayer.
	
	self assert: game currentPlayer equals: ia2.