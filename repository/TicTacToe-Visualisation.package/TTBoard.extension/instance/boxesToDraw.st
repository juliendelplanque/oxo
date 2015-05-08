*TicTacToe-Visualisation
boxesToDraw
	|es|
	es := OrderedCollection new.
	boxes do: [ :box |
		box content = #o ifTrue: [ es add: (RTEllipse new width: 100; height: 100; color: Color black) element ].
		box content = #x ifTrue: [ es add: (RTBox new width: 100; height: 100; color: (Color orange)) element ].
		box isEmpty ifTrue: [ es add: (RTBox new width: 100; height: 100; color: (Color gray alpha: 0.10)) element ].
	].
	RTGridLayout on: es.
	^es