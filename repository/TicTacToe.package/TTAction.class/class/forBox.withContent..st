instance creation
forBox: anInteger withContent: aSymbol
	^self new
		boxToModify: anInteger;
		contentToSet: aSymbol;
		yourself