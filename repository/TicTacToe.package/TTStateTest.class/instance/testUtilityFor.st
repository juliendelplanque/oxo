as yet unclassified
testUtilityFor
	| board ai state |
	board := TTBoard new.
	board
		setXAtBox: 1;
		setOAtBox: 2;
		setXAtBox: 3;
		setOAtBox: 4;
		setXAtBox: 7;
		setOAtBox: 5;
		setXAtBox: 8;
		setOAtBox: 6.

	ai := TTMinimaxAI new useO; yourself.

	state := TTState new.
	state currentPlayer: ai.
	state playerForNextRound: (TTPlayer new useX; yourself).
	state board: board.
	
	self assert: (state utilityFor: ai) equals: 1