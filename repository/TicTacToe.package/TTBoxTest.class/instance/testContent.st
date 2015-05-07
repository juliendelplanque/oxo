tests-accessing
testContent
	|box|
	box := TTBox withIndex: 1.
	box setO.
	
	self assert: box content equals: #o.