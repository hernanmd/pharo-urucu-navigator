Class {
	#name : #UrTopLabelStrategy,
	#superclass : #UrLabelStrategy,
	#category : #'UrucuNavigator-UI-Roassal3'
}

{ #category : #applying }
UrTopLabelStrategy >> applyBeforeCreatingElementsWith: aShapeBuilder [

	| labeled |
	labeled := RSLabeled new.
	labeled shape: self shapeBuilder.
	labeled model: [ :element | element model object ].
	aShapeBuilder interaction addInteraction: labeled.
]