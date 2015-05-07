tests-accessing
testContentToSet
	|action|
	action := TTAction new contentToSet: #o.
	self assert: action contentToSet equals: #o.
	
	action contentToSet: #x.
	self assert: action contentToSet equals: #x.