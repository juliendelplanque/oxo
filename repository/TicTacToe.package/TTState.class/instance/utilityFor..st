as yet unclassified
utilityFor: anOXOPlayer
	self flag: 'Need refactor here!'.
	((self board boxesAtIndexesHaveSameContent: { 1 . 2 . 3}) and: [ 
		(self board boxesContentAtIndexes: { 1 . 2 . 3}) = anOXOPlayer symboleUsed ])
		ifTrue: [ ^1 ].
	((self board boxesAtIndexesHaveSameContent: { 1 . 2 . 3}) and: [ 
		(self board boxesContentAtIndexes: { 1 . 2 . 3}) = anOXOPlayer oppositeSymbole ])
		ifTrue: [ ^-1 ].
	((self board boxesAtIndexesHaveSameContent: { 4 . 5 . 6}) and: [ 
		(self board boxesContentAtIndexes: { 4 . 5 . 6}) = anOXOPlayer symboleUsed ])
		ifTrue: [ ^1 ].
	((self board boxesAtIndexesHaveSameContent: { 4 . 5 . 6}) and: [ 
		(self board boxesContentAtIndexes: { 4 . 5 . 6}) = anOXOPlayer oppositeSymbole ])
		ifTrue: [ ^-1 ].
	((self board boxesAtIndexesHaveSameContent: { 7 . 8 . 9}) and: [ 
		(self board boxesContentAtIndexes: { 7 . 8 . 9}) = anOXOPlayer symboleUsed ])
		ifTrue: [ ^1 ].
	((self board boxesAtIndexesHaveSameContent: { 7 . 8 . 9}) and: [ 
		(self board boxesContentAtIndexes: { 7 . 8 . 9}) = anOXOPlayer oppositeSymbole ])
		ifTrue: [ ^-1 ].
	((self board boxesAtIndexesHaveSameContent: { 1 . 4 . 7}) and: [ 
		(self board boxesContentAtIndexes: { 1 . 4 . 7}) = anOXOPlayer symboleUsed ])
		ifTrue: [ ^1 ].
	((self board boxesAtIndexesHaveSameContent: { 1 . 4 . 7}) and: [ 
		(self board boxesContentAtIndexes: { 1 . 4 . 7}) = anOXOPlayer oppositeSymbole ])
		ifTrue: [ ^-1 ].
	((self board boxesAtIndexesHaveSameContent: { 2 . 5 . 8}) and: [ 
		(self board boxesContentAtIndexes: { 2 . 5 . 8}) = anOXOPlayer symboleUsed ])
		ifTrue: [ ^1 ].
	((self board boxesAtIndexesHaveSameContent: { 2 . 5 . 8}) and: [ 
		(self board boxesContentAtIndexes: { 2 . 5 . 8}) = anOXOPlayer oppositeSymbole ])
		ifTrue: [ ^-1 ].
	((self board boxesAtIndexesHaveSameContent: { 3 . 6 . 9}) and: [ 
		(self board boxesContentAtIndexes: { 3 . 6 . 9}) = anOXOPlayer symboleUsed ])
		ifTrue: [ ^1 ].
	((self board boxesAtIndexesHaveSameContent: { 3 . 6 . 9}) and: [ 
		(self board boxesContentAtIndexes: { 3 . 6 . 9}) = anOXOPlayer oppositeSymbole ])
		ifTrue: [ ^-1 ].
	((self board boxesAtIndexesHaveSameContent: { 1 . 5 . 9}) and: [ 
		(self board boxesContentAtIndexes: { 1 . 5 . 9}) = anOXOPlayer symboleUsed ])
		ifTrue: [ ^1 ].
	((self board boxesAtIndexesHaveSameContent: { 1 . 5 . 9}) and: [ 
		(self board boxesContentAtIndexes: { 1 . 5 . 9}) = anOXOPlayer oppositeSymbole ])
		ifTrue: [ ^-1 ].
	((self board boxesAtIndexesHaveSameContent: { 3 . 5 . 7}) and: [ 
		(self board boxesContentAtIndexes: { 3 . 5 . 7}) = anOXOPlayer symboleUsed ])
		ifTrue: [ ^1 ].
	((self board boxesAtIndexesHaveSameContent: { 3 . 5 . 7}) and: [ 
		(self board boxesContentAtIndexes: { 3 . 5 . 7}) = anOXOPlayer oppositeSymbole ])
		ifTrue: [ ^-1 ].
	^0