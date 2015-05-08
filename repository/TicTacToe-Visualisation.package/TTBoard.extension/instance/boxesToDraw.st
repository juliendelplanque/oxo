*TicTacToe-Visualisation
boxesToDraw
	|es|
	es := OrderedCollection new.
	boxes do: [ :box |
		box content = #o
			ifTrue: [ es add: (RTEllipse new width: 100; height: 100; color: Color black; yourself) element ].
		box content = #x
			ifTrue: [ es add: (RTBox new width: 100; height: 100; color: (Color orange); yourself) element ].
		box isEmpty
			ifTrue: [
				es add: (RTBox new width: 100; height: 100; color: (Color gray alpha: 0.10); yourself) element ].
	].
	RTGridLayout on: es.
	^es