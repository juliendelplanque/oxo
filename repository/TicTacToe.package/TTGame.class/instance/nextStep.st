game
nextStep
	board isGameFinished
		ifFalse: [
			currentPlayer play: board.
			self changePlayer.
			step := step+1 ]
		ifTrue: [ 
			Transcript show: 'Game over.'; cr ]