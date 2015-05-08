*TicTacToe-Visualisation
visualisationElements
	|elements|
	elements := OrderedCollection new.
	boxes do: [ :box |
		box isEmpty ifTrue: [ elements add: (RTBox new size: 10; color: (Color white alpha: 0.1)) element. ].
		(box content = #o)
			ifTrue: [ elements add: (RTEllipse new width: 10; height: 10; color: (Color gray alpha: 0.75)) element].
		(box content = #x)	
			ifTrue: [ elements add: (RTBox new size: 10; color: (Color orange alpha: 0.75)) element. ]
	 ].
	RTGridLayout on: elements.
	^elements