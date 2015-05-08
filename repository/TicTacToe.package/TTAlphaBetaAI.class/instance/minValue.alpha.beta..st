as yet unclassified
minValue: anOXOState alpha: alpha beta: beta
	(anOXOState isTerminal)
		ifTrue: [ ^anOXOState utilityFor: self ]
		ifFalse: [ 
			|v inBeta|
			inBeta := beta.
			v := Float infinity.
			anOXOState actions do: [ :action |
				v := v min: (self maxValue: (anOXOState result: action) alpha: alpha beta: inBeta).
				(v <= alpha)
					ifTrue: [ ^v ].
				inBeta := inBeta min: v ].
			^v
			 ]