tests-accessing
testIsEmpty
	|box|
	box := TTBox withIndex: 1.
	
	self assert: box isEmpty.
	
	box setO.

	self deny: box isEmpty