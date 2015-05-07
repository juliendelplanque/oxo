game
changePlayer
	currentPlayer = player1
		ifTrue: [ currentPlayer := player2  ]
		ifFalse: [ currentPlayer := player1 ]