as yet unclassified
testRemovingADepthAliasTalent
	| x |
	x := Object new.

	self halt.

	x addTalent: taTestTalent.
	x addTalent: (taRecursiveMethodTalent @= (#someRecursive: -> #mRecursive:)).

	self assert: x someMessage equals: 42.
	self assert: (x mRecursive:5 ) equals: 20.

	x removeTalent: taRecursiveMethodTalent.
	self assert: x someMessage equals: 42.
	self should: [ x mRecursive:5 ] raise: Error.