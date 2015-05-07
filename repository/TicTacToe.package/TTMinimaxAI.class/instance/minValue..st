minimax
minValue: anOXOState
	(anOXOState isTerminal)
		ifTrue: [ ^anOXOState utilityFor: self ]
		ifFalse: [ 
			|v|
			v := Float infinity.
			anOXOState actions do: [ :action |
				v := v min: (self maxValue: (anOXOState result: action)) ].
			^v
			 ]