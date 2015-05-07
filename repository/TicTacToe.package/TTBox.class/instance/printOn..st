printing
printOn: aStream
	(content = nil)
		ifTrue: [ aStream << 'empty' ]
		ifFalse: [ aStream << content asString ]