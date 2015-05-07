box content
boxesAtIndexesHaveSameContent: anIntegerCollection
	|contentExpected|
	contentExpected := (boxes at: (anIntegerCollection at: 1)) content.
	anIntegerCollection do: [ :index |
		((((boxes at: index) content ) = contentExpected) and: [ (boxes at: index) content isNotNil ])
			ifFalse: [ ^false ] ].
	^true