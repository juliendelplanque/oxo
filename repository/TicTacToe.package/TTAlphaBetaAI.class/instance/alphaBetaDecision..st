as yet unclassified
alphaBetaDecision: anOXOState
	|maximizingAction maximizingUtility|
	maximizingAction := anOXOState actions at: 1.
	maximizingUtility := -1.
	anOXOState actions do: [ :action |
		|currentUtility|
		currentUtility := self minValue: (anOXOState result: action)
										alpha: Float infinity withNegativeSign beta: Float infinity.
		(currentUtility > maximizingUtility)
			ifTrue: [ maximizingAction := action. maximizingUtility := currentUtility ].
		].
	^ maximizingAction