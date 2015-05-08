*TicTacToe-Visualisation
view
	|b states|
	b := RTMondrian new.
	b interaction noInteractions.
	b interaction popup group: [ :group :el |
		| elements |
		elements := el model board visualisationElements.
		group addAll: elements.
	].
	b shape ellipse
				height: 10;
				width: 10;
				if: [:state | state isTerminal and: [ (state utilityFor: self currentPlayer) = 1 ] ] color: Color green;
				if: [:state | state isTerminal and: [ (state utilityFor: self currentPlayer) = 0 ] ] color: Color gray;
				if: [:state | state isTerminal and: [ (state utilityFor: self currentPlayer) = -1 ] ] color: Color red;
				if: [:state | state isTerminal not ] color: Color blue.
	states := self allResultsAndSubResults.
	states add: self.
	b nodes: states.
	b edges objects: states from: #previousState to: #yourself.
	b layout radialTree.
	b build.
	^b view