tests-modify
testSetX
	|box|
	box := TTBox withIndex: 1.
	box setX.
	
	self assert: box content equals: #x.