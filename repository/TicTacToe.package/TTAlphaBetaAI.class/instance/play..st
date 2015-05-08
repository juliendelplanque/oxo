as yet unclassified
play: anOXOBoard
	|action state|
	state := TTState new.
	state
		currentPlayer: self;
		playerForNextRound: otherPlayer;
		board: anOXOBoard.
	action := self alphaBetaDecision: state.
	action modifyBoard: anOXOBoard.