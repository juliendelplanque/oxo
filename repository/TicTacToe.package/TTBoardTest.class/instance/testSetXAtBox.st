tests-modify
testSetXAtBox
	|board|
	board := TTBoard new.
	
	board
		setXAtBox: 1.
	
	self assert: (board contentAt: 1) equals: #x.