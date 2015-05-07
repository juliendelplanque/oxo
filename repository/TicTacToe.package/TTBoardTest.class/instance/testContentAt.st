tests-accessing
testContentAt
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
	
	self
		assert: (board contentAt: 1) equals: #o;
		assert: (board contentAt: 2) equals: #x;
		assert: (board contentAt: 3) equals: #o;
		assert: (board contentAt: 4) equals: #x;
		assert: (board contentAt: 5) equals: #o;
		assert: (board contentAt: 6) equals: #x;
		assert: (board contentAt: 7) equals: #o;
		assert: (board contentAt: 8) equals: #x;
		assert: (board contentAt: 9) equals: #o.