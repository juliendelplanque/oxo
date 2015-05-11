*TicTacToe-Visualisation
view: game
	|view|
	view := RTView new.
	view addAll: self boxesToDraw.
	view
		addMenu: 'next' callback: [ 
			game nextStep.
			view
				clean;
				addAll: self boxesToDraw. ];
		addMenu: 'restart' callback: [ 
			game newGame.
			view
				clean;
				addAll: self boxesToDraw. ];
		addMenu: 'tree' callback: [ 
			|state|
			state := TTState new.
			(game step > 2) ifTrue: [ 
			state
				currentPlayer: game currentPlayer;
				playerForNextRound: game nextStepPlayer;
				board: self.
			state view openWithMenu ] ].
	^view