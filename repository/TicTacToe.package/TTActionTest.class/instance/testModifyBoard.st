tests-as yet unclassified
testModifyBoard
	|action board|
	action := TTAction forBox: 5 withContent: #x.
	board := TTBoard new.
	self assert: board emptyBoxes equals: { 1 . 2 . 3 . 4 . 5 . 6 . 7 . 8 . 9 }.
	action modifyBoard: board.
	self assert: board emptyBoxes equals: { 1 . 2 . 3 . 4 . 6 . 7 . 8 . 9 }.
	self assert: (board contentAt: 5) equals: #x.
	
	action := TTAction forBox: 6 withContent: #o.
	action modifyBoard: board.
	self assert: board emptyBoxes equals: { 1 . 2 . 3 . 4 . 7 . 8 . 9 }.
	self assert: (board contentAt: 6) equals: #o.