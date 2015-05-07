tests-game state
testIsGameFinished
	|board|
	board := TTBoard new.
	
	board
		setOAtBox: 1;
		setXAtBox: 2;
		setOAtBox: 3;
		setXAtBox: 4;
		setOAtBox: 5;
		setXAtBox: 6;
		setOAtBox: 7;
		setXAtBox: 8;
		setOAtBox: 9.
	
	self assert: board isGameFinished.
	
	board := TTBoard new.
	
	board
		setOAtBox: 1.
	
	self deny: board isGameFinished.