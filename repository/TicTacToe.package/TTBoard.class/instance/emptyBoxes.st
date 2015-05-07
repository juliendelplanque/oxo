accessing
emptyBoxes
	"Return index(es) of empty boxes."
	^ boxes select: [ :box | box isEmpty ] thenCollect: [ :box | box index ]