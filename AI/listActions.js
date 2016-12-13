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
	_sizeBoard: 8,
	
	/**
	 * Affiche le plateau
	 * */
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
	
	/**
	 * 
	 * */
	 parseMarble: function(n) {
		 switch(n) {
			 case 0: return 0;
			 case 1: return "PW";
			 case 2: return "PB";
			 case 3: return "QW";
			 case 4: return "QB";
			 default: throw new Error("Format de la cellule inconnu");
		 }
	 },
	
	/**
	 * Liste les coordonnées des pièces
	 * @param	[[Int]]	color
	 * @return 	[string]
	 * */
	listCoord: function(board, color) {
		if(color == "string") {
			return this.listCoord$color(board, color);
		} else {
			return this.listCoord$both(board);
		}
	},
	
	listCoord$both: function(board) {
		var coord = this.listCoord$color(board, "white");
		coord.concat(this.listCoord$color(board, "black"));
		
		return coord;
	},
	
	listCoord$color: function(board, color) {
		var coord = [];
		var valuePawn, valueQueen;
		
		if(color == "black") {
			valuePawn = 2;
			valueQueen = 4;
		} else if (color == "white") {
			valuePawn = 1;
			valueQueen = 3;
		}
		
		for(var i=0 ; i<this._sizeBoard ; i++) {
			for(var j=0 ; j<this._sizeBoard ; j++) {
				c = "";
				if(board[i][j] == valuePawn || board[i][j] == valueQueen) {
					c += this.parseMarble(board[i][j]);
					c += "-";
					c += i;
					c += j;
					
					coord.push(c);
				}
			}
		}
		
		return coord;
	},
	
	/**
	 * Liste les mouvements possibles d'une pièce
	 * @param	Coord
	 * @return	
	 * */
	listMoves: function(board, color) {
		
	},
	
	/**
	 * Liste les déplacements possibles d'une pièce
	 * */
	 displacement: function(marble) {
		 
	 },
	 
	/**
	 * Liste les captures possibles d'une pièce
	 * */
	 capture: function(marble) {
		 
	},
	 
};

function main() {
	AI.show(board);
	console.log(AI.listCoord(board));
	console.log(AI.listCoord(board, "black"));
}

main();
