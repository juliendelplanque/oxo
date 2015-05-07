private
boxesContentAtIndexes: anIntegerCollection
	self flag: 'Check if all equals.'.
	^(boxes at: (anIntegerCollection at: 1)) content