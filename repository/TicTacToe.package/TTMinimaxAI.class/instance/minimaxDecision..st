minimax
minimaxDecision: anOXOState
	|maximizingAction maximizingUtility|
	maximizingAction := anOXOState actions at: 1.
	maximizingUtility := -1.
	anOXOState actions do: [ :action |
		|currentUtility|
		currentUtility := self minValue: (anOXOState result: action).
		(currentUtility > maximizingUtility)
			ifTrue: [ maximizingAction := action. maximizingUtility := currentUtility ].
		].
	^ maximizingAction