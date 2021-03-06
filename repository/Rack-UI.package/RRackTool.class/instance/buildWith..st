tool builder
buildWith: aBuilder
	
	| windowSpec listSpec window |
	
	windowSpec := aBuilder pluggableWindowSpec new
		model: self;
		label: 'Your Object Rack';
		children: OrderedCollection new.
		
	listSpec := aBuilder pluggableTreeSpec new.
	listSpec 
		model: self;
		roots: #rootRackFolder;
		label: #elementNameOf:;
		hasChildren: #isNonEmptyFolder:;
		getChildren: #elementsOfFolder:;
		setSelected: #setSelectedEntryTo:;
		getSelected: #getSelectedEntry;
		setSelectedParent: #selectedParent:;
		setSelectedPath: #selectedPath:;
		getSelectedPath: #selectedPath;
		dragItem: #dragFromRack:;
		dropAccept: #wantsDroppedObject:;
		dropItem: #drop:ontoEntry:shouldCopy:;
		doubleClick: #doubleClickOn:;
		keyPress: #keyPressed:;
		autoDeselect: false;
		icon: #iconFor:;
		menu: #generalMenu:;
		frame: (0@0 corner: 1@1).
	windowSpec children add: listSpec.
	
	window := aBuilder build: windowSpec.
	self showsTheRackRoot ifTrue: [self changed: #expandRootsRequested].
	^ window
	