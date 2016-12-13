TU = {
	test_01: function() {
		var board = [
			[0,0,0,0,0,0,0,0],
			[2,2,2,2,2,2,2,2],
			[2,2,2,2,2,2,2,2],
			[0,0,0,0,0,0,0,0],
			[0,0,0,0,0,0,0,0],
			[1,1,1,1,1,1,1,1],
			[1,1,1,1,1,1,1,1],
			[0,0,0,0,0,0,0,0],
		];
		AI.BOARD.__init(board);
		AI.BOARD.show();
	},
	
	test_02: function() {
		var board = [
			[0,0,0,0,0,0,0,0],
			[2,2,2,2,2,2,2,2],
			[2,2,2,2,2,2,2,2],
			[0,0,0,0,0,0,0,0],
			[0,0,0,0,0,0,0,0],
			[1,1,1,1,1,1,1,1],
			[1,1,1,1,1,1,1,1],
			[0,0,0,0,0,0,0,0],
		];
		AI.BOARD.__init(board);
		
		var buffer = "";
		
		buffer += AI.BOARD.getCell(0,7) + " [0] \n";
		buffer += AI.BOARD.getCell(1,0) + " [2] \n";
		buffer += AI.BOARD.getCell(4,5) + " [1] \n";
		
		buffer += AI.BOARD.setCell(0,1,1) + " [undefined] \n";
		buffer += AI.BOARD.getCell(0,1) + " [1] \n";
		
		console.log(buffer);
	},
	
	test_03: function() {
		var board = [
			[0,0,0,0,0,0,0,0],
			[2,2,2,2,2,2,2,2],
			[2,2,2,2,2,2,2,2],
			[0,0,0,0,0,0,0,0],
			[0,0,0,0,0,0,0,0],
			[1,1,1,1,1,1,1,1],
			[1,1,1,1,1,1,1,1],
			[0,0,0,0,0,0,0,0],
		];
		AI.BOARD.__init(board);
		
		var buffer = "";
		
		buffer += AI.BOARD.inBoard(-1,0) + " [False] \n";
		buffer += AI.BOARD.inBoard(2,4) + " [True] \n";
		buffer += AI.BOARD.inBoard(0,8) + " [False] \n";
		buffer += AI.BOARD.inBoard(7,7) + " [True] \n";
		
		buffer += AI.BOARD.isEmpty(5,2) + " [False] \n";
		buffer += AI.BOARD.isEmpty(0,0) + " [True] \n";
		buffer += AI.BOARD.isEmpty(1,0) + " [False] \n";
		buffer += AI.BOARD.isEmpty(-1,4) + " [True] \n";
		
		console.log(buffer);
	},
	
	test_04: function() {
		
	},
}

function runTU() {
	TU.test_03();
}
