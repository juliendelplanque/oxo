tests-accessing
testIndex
	|box|
	box := TTBox withIndex: 1.
	
	self assert: box index equals: 1