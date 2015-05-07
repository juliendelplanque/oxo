minimax
minimaxDecision: anOXOState
	|maximizingAction maximizingUtility|
	maximizingAction := anOXOState actions at: 1.
	maximizingUtility := -1.
	anOXOState actions do: [ :action |
		|currentUtility|
		Transcript show: action boxToModify.
		currentUtility := self minValue: (anOXOState result: action).
		Transcript show: ' : ' , currentUtility asString ; cr.
		(currentUtility > maximizingUtility)
			ifTrue: [ maximizingAction := action. maximizingUtility := currentUtility ].
		].
	^ maximizingAction