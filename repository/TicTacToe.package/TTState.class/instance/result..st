as yet unclassified
result: anOXOAction
	|newState newBoard|
	newBoard := self board deepCopy.
	anOXOAction modifyBoard: newBoard.
	newState := TTState new.
	newState
		board: newBoard;
		currentPlayer: self playerForNextRound;
		playerForNextRound: self currentPlayer;
		previousState: self.
	^newState