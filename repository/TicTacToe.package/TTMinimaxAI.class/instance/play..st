as yet unclassified
play: anOXOBoard
	|action state|
	state := TTState new.
	state
		currentPlayer: self;
		playerForNextRound: otherPlayer;
		board: anOXOBoard.
	action := self minimaxDecision: state.
	action modifyBoard: anOXOBoard.