board modification
modifyBoard: anOXOBoard
	(self contentToSet = #o)
		ifTrue: [ anOXOBoard setOAtBox: self boxToModify ]
		ifFalse: [ anOXOBoard setXAtBox: self boxToModify ]