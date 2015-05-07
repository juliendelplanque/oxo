as yet unclassified
play: anOXOBoard
	(self symboleUsed = #o)
		ifTrue: [ anOXOBoard setOAtBox: anOXOBoard emptyBoxes atRandom ]
		ifFalse: [ anOXOBoard setXAtBox: anOXOBoard emptyBoxes atRandom ]	