tests-accessing
testBoxesContentAtIndexes
	|board|
	board := TTBoard new.
	
	board
		setOAtBox: 1;
		setOAtBox: 5;
		setOAtBox: 9.
	
	self assert: (board boxesContentAtIndexes: #(1 . 5 . 9)) equals: #o.