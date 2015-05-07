as yet unclassified
allResultsAndSubResults
	(self isTerminal)
		ifTrue: [ ^OrderedCollection new ]
		ifFalse: [ 
			|allResults results|
			results := OrderedCollection new.
			allResults := self allResults.
			allResults do: [ :state | results addAll: state allResultsAndSubResults ].
			results addAll: allResults.
			^results
			 ]