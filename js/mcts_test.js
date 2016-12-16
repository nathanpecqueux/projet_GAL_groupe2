function TU_01() {
	AI.TREE.__init([], ["D-20-21","D-21-22"]);
	
	AI.TREE.createNode(0, [], ["C-24-26"]);
	AI.TREE.createNode(0, [], ["D-20-21"]);
	AI.TREE.createNode(1, [], ["C-34-37-57"]);
	
	AI.TREE.show();
}

function TU_02() {
	var root = AI.TREE.__init([], []);
	
	var n1 = AI.TREE.createNode(0, [], []);
	var n2 = AI.TREE.createNode(0, [], []);
	
	var n3 = AI.TREE.createNode(1, [], []);
	var n4 = AI.TREE.createNode(1, [], []);
	
	var n5 = AI.TREE.createNode(2, [], []);
	
	AI.TREE.show();
}
