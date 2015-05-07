tests-accessing
testEmptyBoxes
	|board|
	board := TTBoard new.
	
	board
		setOAtBox: 1;
		setXAtBox: 2;
		setOAtBox: 3.
	
	self assert: board emptyBoxes equals: #(4 5 6 7 8 9).