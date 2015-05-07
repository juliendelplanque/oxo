game state
isGameFinished
	^self emptyBoxes isEmpty or: [ 
		(self boxesAtIndexesHaveSameContent: { 1 . 2 . 3 }) or: [ 
			(self boxesAtIndexesHaveSameContent: { 4 . 5 . 6 }) or: [ 
				(self boxesAtIndexesHaveSameContent: { 7 . 8 . 9 }) or: [ 
					(self boxesAtIndexesHaveSameContent: { 1 . 4 . 7 }) or: [
						(self boxesAtIndexesHaveSameContent: { 2 . 5 . 8 }) or: [ 
							(self boxesAtIndexesHaveSameContent: { 3 . 6 . 9 }) or: [ 
								(self boxesAtIndexesHaveSameContent: { 1 . 5 . 9 }) or: [ 
									(self boxesAtIndexesHaveSameContent: { 3 . 5 . 7 })
									]
								 ]
							 ]
						 ]
					 ]
				 ]
			 ]
		 ]