as yet unclassified
maxValue: anOXOState alpha: alpha beta: beta
	(anOXOState isTerminal)
		ifTrue: [ ^anOXOState utilityFor: self ]
		ifFalse: [ 
			|v inAlpha|
			inAlpha := alpha.
			v := Float infinity withNegativeSign.
			anOXOState actions do: [ :action |
				v := v max: (self minValue: (anOXOState result: action) alpha: inAlpha beta: beta).
				(v >= beta)
					ifTrue: [ ^v ].
				inAlpha := inAlpha max: v ].
			^v
			 ]