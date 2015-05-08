game
nextStep
	board isGameFinished
		ifFalse: [
			currentPlayer play: board.
			self changePlayer ]
		ifTrue: [ 
			Transcript show: 'Game over.'; cr ]