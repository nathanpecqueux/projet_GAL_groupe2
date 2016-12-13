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
	
AI = {
	_sizeBoard: 8,
	
	show: function(board) {
		var buffer = "";
		
		for(var i=0 ; i<this._sizeBoard ; i++) {
			buffer += "[";
			for(var j=0 ; j<this._sizeBoard; j++) {
				buffer += board[i][j];
				if(j != this._sizeBoard -1) {
					buffer += ",";
				}
			}
			buffer += "]\n";
		}
		
		console.log(buffer);
	},
	
	listMarbles: function(player) {
		coordMarbles = [];
		
		for(var i=0 ; i<this._sizeBoard ; i++) {
			for(var j=0 ; j<this._sizeBoard ; j++) {
				if(board[i][j] == player) {
					coordMarbles.push(i + "" + j);
				}
			}
		}
		
		console.log(coordMarbles);
	},
	
};

function main() {
	AI.show(board);
	AI.listMarbles(1);
}

main();
