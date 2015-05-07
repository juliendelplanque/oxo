tests-modify
testSetOAtBox
	|board|
	board := TTBoard new.
	
	board
		setOAtBox: 1.
	
	self assert: (board contentAt: 1) equals: #o.