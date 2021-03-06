Class {
	#name : #BaselineOfTalents,
	#superclass : #BaselineOf,
	#category : 'BaselineOfTalents'
}

{ #category : #baselines }
BaselineOfTalents >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec
		package: 'Talents';
		package: 'Talents-Tests' with: [ spec requires: #(Talents) ];

		group: 'core'
			with: #(Talents);
		group: 'test'
			with: #('Talents-Tests')
	]
]
