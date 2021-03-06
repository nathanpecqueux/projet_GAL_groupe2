"use strict";

var GUI = {
	PLAYER: {
		_player: "B",
		
		add: function (num, player) {
			num++;
			this.setName(num, player.name);
			this.setType(num, player.type);
			return;
		},
		
		setName: function(num, name) {
			var nameBox = document.querySelector("#player_" + num + " .name");
			nameBox.innerHTML = name;
		},
		
		setType: function(num, type) {
			var typeBox = document.querySelector("#player_" + num + " .type");
			typeBox.innerHTML = type;
		},
		
		updateTurn: function (color) {
			var white = document.querySelector("#player_1");
			var black = document.querySelector("#player_2");
			
			if (color == "white") {
				white.className = "current";
				black.className = "";
			} else if (color == "black") {
				black.className = "current";
				white.className = "";
			}
			
			return;
		}
	},
	
	BOARD: {
		__init: function() {
			var token;
			for(var l=1 ; l<=2 ; l++) {
				for(var c=0 ; c<8 ; c++) {
					token = this.buildToken("P","B");
					this.addToken(l, c, token);
				}
			}
			
			for(var l=5 ; l<=6 ; l++) {
				for(var c=0 ; c<8 ; c++) {
					token = this.buildToken("P","W");
					this.addToken(l, c, token);
				}
			}
		},
		
		getCell: function(line, column) {
			var line = "[data-line='" + line + "']";
			var column = "[data-column='" + column + "']";
			
			return document.querySelector("#board td" + line + column);
		},
		
		getToken: function(l,c) {
			var line = "[data-line='" + l + "']";
			var column = "[data-column='" + c + "']";
			
			return document.querySelector("#board td" + line + column + " div");
		},
		
		addToken: function(line, column, token) {
			var cell = this.getCell(line, column);
			
			cell.appendChild(token);
		},
		
		removeToken: function(line, column) {
			var token = this.getToken(line, column);
			token.parentNode.removeChild(token);
		},
		
		/**
		 * Fabrique un jeton
		@param		{string}
		@param		{string}
		@return		{div}
		 * */
		buildToken: function(type, color) {
			var token = document.createElement("div");
			
			if (color == "B" || color == "black") {
				token.dataset.color = "black";
			} else if (color == "W" || color == "white") {
				token.dataset.color = "white";
			}
			
			if (type == "P" || type=="pawn") {
				token.dataset.type = "pawn";
			} else if (type == "Q" || type == "queen") {
				token.dataset.type = "queen";
			}
			
			return token;		
		},
		
		doMovement: function (move) {
			if (move[0] == "D") {
				this.doMovement$displacement(move);
			} else if (move[0] == "C") {
				this.doMovement$captureAll(move);
			}
			
			
			return;
		},
		
		doMovement$displacement: function (move) {
			move = move.split("-");
			move.splice(0,1);
			var sourceToken = this.getToken(move[0][0], move[0][1]);
			var sourceCell = this.getCell(move[0][0], move[0][1]);
			var destination = this.getCell(move[1][0], move[1][1]);
			
			sourceCell.removeChild(sourceToken);
			destination.appendChild(sourceToken);
			
			// transformer dame
			if ((sourceToken.dataset.color == "black" && destination.dataset.line == 7)
			|| (sourceToken.dataset.color == "white" && destination.dataset.line == 0)) {
				sourceToken.dataset.type = "queen";
			}
			
			return;
		},
		
		doMovement$captureAll: function (move) {
			move = move.split("-");
			move.splice(0,1);
			
			this.doMovement$capture(move);
			
			return;
		},
		
		doMovement$capture: function (move) {
			setTimeout(function () {
				if (move.length < 2) {
					return;
				} else {
					var sourceToken = GUI.BOARD.getToken(move[0][0], move[0][1]);
					var sourceCell = GUI.BOARD.getCell(move[0][0], move[0][1]);
					var targetToken = GUI.BOARD.getToken(move[1][0], move[1][1]);
					var targetCell = GUI.BOARD.getCell(move[1][0], move[1][1]);
					var destination = GUI.BOARD.getCell(move[2][0], move[2][1]);
					
					sourceCell.removeChild(sourceToken);
					targetCell.removeChild(targetToken);
					destination.appendChild(sourceToken);
					
					// transformer dame
					if ((sourceToken.dataset.color == "black" && destination.dataset.line == 7)
					|| (sourceToken.dataset.color == "white" && destination.dataset.line == 0)) {
						sourceToken.dataset.type = "queen";
					}
					
					move.splice(0,2);
					return GUI.BOARD.doMovement$capture(move);
				}
			}, 500);
		},
	},
	
	EVENT: {
		_prisesMax: undefined,
		_type: undefined,
		
		deserialize: function (moves, type) {
			if (type == "D") {
				return this.deserialize$displacement(moves);
			} else if (type == "C") {
				return this.deserialize$capture(moves);
			}
		},
		
		deserialize$capture: function (moves) {
			var movesF = [];
			for (let move of moves) {
				move = move.substring(3, move.length);
				move = move.split("-");
				
				var sources = [];
				var targets = [];
				for (var i in move) {
					var c = {line: move[i][0], column: move[i][1]};
					if (i % 2 == 0) {
						sources.push(c);
					} else if (i % 2 == 1) {
						targets.push(c);
					}
				}
				
				movesF.push({sources: sources, targets: targets});
				
			}
			return movesF;
		},
		
		deserialize$displacement: function (moves) {
			var movesF = [];
			
			for (let move of moves) {
				move = move.substring(2, move.length);
				move = move.split("-");
				
				var sources = [];
				for (var i = 0 ; i<2 ; i++) {
					var c = {line: move[i][0], column: move[i][1]};
					sources.push(c);
				}
				
				movesF.push({sources: sources});
				
			}
			return movesF;
		},
		
		serialize: function (move) {
			if (GUI.EVENT._type == "D") {
				return this.serialize$displacement(move);
			} else if (GUI.EVENT._type == "C") {
				return this.serialize$capture(move);
			}
		},
		serialize$capture: function (move) {
			var n = move.targets.length;
			var moveFormated = "C" + n;
			moveFormated += "-" + move.sources[0].line + move.sources[0].column;
			move.sources.splice(0,1);
			
			for (var i = 0 ; i<n ; i++) {
				moveFormated += "-" + move.targets[i].line + move.targets[i].column;
				moveFormated += "-" + move.sources[i].line + move.sources[i].column;
			}
			return moveFormated;
		},
		serialize$displacement: function (move) {
			var moveFormated = "D";
			moveFormated += "-" + move.sources[0].line + move.sources[0].column;
			moveFormated += "-" + move.sources[1].line + move.sources[1].column;
			
			return moveFormated;
		},
		
		init: function (moves) {
			if (moves[0][0] == "C") {
				this._prisesMax = moves[0][1];
				this._type = "C";
				var formatedCaptures = this.deserialize(moves, "C");
				this.HANDLER.setMoves(formatedCaptures);
			} else if (moves[0][0] == "D") {
				this._prisesMax = 1;
				this._type = "D";
				var formatedCaptures = this.deserialize(moves, "D");
				this.HANDLER.setMoves(formatedCaptures);
			}
			
			this.addListenerAll();
		},
		
		addListenerAll: function () {
			var sources = this.HANDLER.searchSources();
			for (let source of sources) {
				var token = GUI.BOARD.getToken(source.line, source.column);
				token.addEventListener("click", this.onSource, false);
			}
		},
		
		onSource: function () {
			var line = this.parentNode.dataset.line;
			var column = this.parentNode.dataset.column;
			
			GUI.EVENT.clear();
			GUI.EVENT.HANDLER.addSource(line, column);
			
			var destinations = GUI.EVENT.HANDLER.searchSources();
			for (let destination of destinations) {
				var cell = GUI.BOARD.getCell(destination.line, destination.column);
				cell.className = "focus";
				cell.addEventListener("click", GUI.EVENT.onDestination, false);
			}
		},
		
		onDestination: function () {
			var line = this.dataset.line;
			var column = this.dataset.column;
			
			GUI.EVENT.clear();
			GUI.EVENT.HANDLER.addSource(line, column);
			
			if (GUI.EVENT._type == "D") {
				GUI.EVENT.HANDLER.applyDisplacement();
			} else if (GUI.EVENT._type == "C") {
				GUI.EVENT.HANDLER.applyCapture();
			}
			
			// transformer dame
			var token = GUI.BOARD.getToken(line, column);
			if ((token.dataset.color == "black" && line == 7)
			|| (token.dataset.color == "white" && line == 0)) {
				token.dataset.type = "queen";
			}
			
			// suite pour les multicaptures
			if (GUI.EVENT._prisesMax == GUI.EVENT.HANDLER.getPriseCurrent()) {
				var move = GUI.EVENT.HANDLER.getMove();
				move = GUI.EVENT.serialize(move);
				ENGINE.LOGIC.doMovement(move);
				GAME.MANAGER.playTurn(3);
			} else {
				var destinations = GUI.EVENT.HANDLER.searchSources();
				for (let destination of destinations) {
					var cell = GUI.BOARD.getCell(destination.line, destination.column);
					cell.className = "focus";
					cell.addEventListener("click", GUI.EVENT.onDestination, false);
				} 
			}
		},
		
		clear: function () {
			var tokens = document.querySelectorAll("#board tr td div");
			var cells = document.querySelectorAll("#board tr td");
			
			for (var i=0, n=tokens.length ; i<n ; i++) {
				tokens[i].removeEventListener("click", this.onSource, false); 
			}
			
			for (var i=0, n=cells.length ; i<n ; i++) {
				cells[i].className = "";
				cells[i].removeEventListener("click", GUI.EVENT.onDestination, false); 
			}
		},
		
		
		HANDLER : {
			_moves: [[]],
			_sources: [],
			
			setMoves: function (moves) {
				this._moves = moves;
				this._sources = [];
				return;
			},
			
			getPriseCurrent: function () {
				var n = this._sources.length - 1;
				
				if (n < 0) {
					return 0;
				}
				return n;
			},
			
			addSource: function (line, column) {
				var coord = {line: line, column: column};
				this._sources.push(coord);
				return;
			},
			
			searchSources: function () {
				var n = this._sources.length || 0;
				var sources = [];
				for (let move of this._moves) {
					if (this.moveValide(move.sources)) {
						sources.push(move.sources[n]);
					}
				}
				
				var unique = sources.getUniqueCoord();
				return unique;
			},
			
			moveValide: function (candidate) {
				if (this._sources.length > 0) {
					for (let i in this._sources) {
						if (this._sources[i].line != candidate[i].line 
						|| this._sources[i].column != candidate[i].column) {
							return false;
						}
					}
				}
				
				return true;
			},
			
			getMove: function () {
				for (let move of this._moves) {
					if (this.moveValide(move.sources)) {
						return move;
					}
				}
			},
			
			applyCapture: function () {
				var n = this._sources.length;
				
				var source = this._sources[n-2];
				var destination = this._sources[n-1];
				var target = this.searchTarget();
				var token = GUI.BOARD.getToken(source.line, source.column);
				GUI.BOARD.removeToken(source.line, source.column);
				GUI.BOARD.removeToken(target.line, target.column);
				GUI.BOARD.addToken(destination.line, destination.column, token);
				return;
			},
			
			applyDisplacement: function () {
				var n = this._sources.length;
				
				var source = this._sources[0];
				var destination = this._sources[1];
				
				var token = GUI.BOARD.getToken(source.line, source.column);
				GUI.BOARD.removeToken(source.line, source.column);
				GUI.BOARD.addToken(destination.line, destination.column, token);
				return;
			},
			
			searchTarget: function () {
				var n = this._sources.length - 2;
				for (let move of this._moves) {
					if (this.moveValide(move.sources)) {
						return move.targets[n];
					}
				}
				return;
			}
		}
	}
}

/**
	Retourne les valeurs uniques d'un tableau
	@param	{array}
	@return	{array}
*/
Array.prototype.getUniqueCoord = function(){
   var a = [];
   for (var i=0 ; i < this.length ; i ++) {
	   a.push(this[i].line + "" + this[i].column);
   }
   a = a.filter(function(item, pos) {
		return a.indexOf(item) == pos;
	})
   
   var result = [];
   for (let c of a) {
	   result.push({line: c[0], column: c[1]});
   }
   
   return result;
}
