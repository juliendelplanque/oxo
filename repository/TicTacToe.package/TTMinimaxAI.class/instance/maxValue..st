minimax
maxValue: anOXOState
	(anOXOState isTerminal)
		ifTrue: [ ^anOXOState utilityFor: self ]
		ifFalse: [ 
			|v|
			v := Float infinity withNegativeSign.
			anOXOState actions do: [ :action |
				v := v max: (self minValue: (anOXOState result: action)) ].
			^v
			 ]