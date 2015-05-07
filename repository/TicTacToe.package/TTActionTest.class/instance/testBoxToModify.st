tests-accessing
testBoxToModify
	|action|
	action := TTAction new boxToModify: 1.
	self assert: action boxToModify equals: 1.