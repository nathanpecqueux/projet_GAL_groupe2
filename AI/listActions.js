// 1 : PW
// 2 : PB
// 3 : QW
// 4 : QB

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

var board2 = [
	[0,0,0,0,0,0,0,0],
	[2,2,2,2,2,2,2,2],
	[2,2,0,0,2,2,2,2],
	[0,0,2,0,0,0,0,0],
	[0,0,0,0,0,0,0,2],
	[1,1,1,1,1,1,1,1],
	[1,1,1,1,1,1,1,1],
	[0,0,0,0,0,0,0,0],
];

var board3 = [
	[3,0,0,0,0,0,0,0],
	[0,0,0,0,0,0,0,0],
	[0,0,0,0,0,0,0,0],
	[0,0,0,0,0,0,0,0],
	[2,0,0,0,0,0,0,0],
	[0,0,0,0,0,0,0,0],
	[0,0,0,0,0,0,0,0],
	[0,2,0,2,0,0,0,0],
];

var board4 = [
	[0,0,0,0,0,0,0,0],
	[2,2,2,2,2,2,2,2],
	[2,2,2,0,0,2,2,2],
	[0,0,2,0,0,0,0,0],
	[0,0,0,2,1,0,0,0],
	[1,1,1,1,0,1,1,1],
	[1,1,1,1,1,1,1,1],
	[0,0,0,0,0,0,0,0],
];
	
AI = {
	BOARD: {
		_board: [[]],
		_sizeBoard: 8,
		
		__init: function(board) {
			this._board = board;
		},
		
		getCell: function(line, column) {
			if(this.inBoard(line, column)) {
				return this._board[line][column];
			}
			return false;
		},
		
		setCell: function(line, column, value) {
			this._board[line][column] = value;
			return;
		},
		
		show: function(_board) {
			var buffer = "";
			
			for(var i=0 ; i<this._sizeBoard ; i++) {
				buffer += "[";
				for(var j=0 ; j<this._sizeBoard; j++) {
					buffer += this.getCell(i,j);
					if(j != this._sizeBoard -1) {
						buffer += ",";
					}
				}
				buffer += "]\n";
			}
			console.log(buffer);
		},
		
		isEmpty: function(l,c) {
			if(!this.inBoard(l,c) || !this.getCell(l,c) || this.getCell(l,c) == 0) {
				return true;
			}
			return false;
		},
		
		inBoard: function(l,c) {
			if(l >= 0 && l<this._sizeBoard && l >= 0 && c < this._sizeBoard) {
				return true;
			}
			return false;
		},
		
	},
	
	LOGIC: {
		displacementPawn: function() {
			
		},
		
		displacementQueen: function(cell) {
			
		},
		
		capturePawn: function(cell) {
			
		},
		
		captureQueen: function(cell) {
			
		},
		
		
	},
	
	SIMULATION: {
		
	}, 
};

function main() {
	runTU();
}

main();
