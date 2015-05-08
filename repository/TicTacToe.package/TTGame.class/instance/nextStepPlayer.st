game
nextStepPlayer
	currentPlayer = player1
		ifTrue: [ ^player2 ]
		ifFalse: [ ^player1 ]