"use strict";

var GUI = {
	PLAYER: {		
		update: function(currentPlayer) {
			var player = document.querySelector("#players .currentPlayer");
			
			if(currentPlayer == "B") {
				player.innerHTML = "Black";
			} else if (currentPlayer == "W") {
				player.innerHTML = "White";
			}
		},
	},
	
	BOARD: {
		_moves: [],
		
		__init: function() {
			var token;
			for(var l=1 ; l<=2 ; l++) {
				for(var c=0 ; c<8 ; c++) {
					token = this.buildToken("P","B");
					this.addToken(token, l, c);
				}
			}
			
			for(var l=5 ; l<=6 ; l++) {
				for(var c=0 ; c<8 ; c++) {
					token = this.buildToken("P","W");
					this.addToken(token, l, c);
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
		
		removeToken: function(line, column) {
			var token = this.getToken(line, column);
			token.parentNode.removeChild(token);
		},
		
		/**
		 * Fabrique un jeton
		 * */
		buildToken: function(type, color) {			
			var token = document.createElement("div");
			
			if(color == "B" || color=="black") {
				token.dataset.color = "black";
			} else if (color == "W" || color=="white") {
				token.dataset.color = "white";
				
			}
			
			if (type == "P" || type=="pawn") {
				token.dataset.type = "pawn";
			} else if (type == "Q" || type=="queen") {
				token.dataset.type = "queen";
			}
			
			return token;		
		},
		
		/**
		 * Ajoute un jeton à la cellule cible
		 * @param	div
		 * @param	string
		 * */
		addToken: function(token, line, column) {
			var cell = this.getCell(line, column);
			
			cell.appendChild(token);
		},
		
		getMvtType: function(move) {
			return move.split("-")[0][0];
		},
		getSrcCoord: function(move) {
			return move.split("-")[1];
		},
		getSrcLine: function(move) {
			return move.split("-")[1][0];
		},
		getSrcColumn: function(move) {
			return move.split("-")[1][1];
		},
		getCibleCoord: function(move) {
			return move.split("-")[2];
		},
		getCoordTaken: function(move) {
			return move.split("-")[3];
		},
		
		initTurn: function(moves) {
			this._moves = moves;
			this.addListenersTokens();
		},
		
		addListenersTokens: function() {
			var line, column;
			var token;
			var moves = this._moves;
			for(let move of moves) {
				line = this.getSrcLine(move);
				column = this.getSrcColumn(move);
				token = this.getToken(line, column);
				token.addEventListener("click", GUI.BOARD.addListenersTargets, false);
			}
		},
		
		addListenersTargets: function() {
			var line = this.parentNode.dataset.line;
			var column = this.parentNode.dataset.column;
			GUI.BOARD.HANDLER.__init(this, line, column);
			GUI.BOARD.removeListenersCells();

			for(var i=0 ; i<GUI.BOARD._moves.length ; i++) {
				var moveSrcLine = GUI.BOARD.getSrcLine(GUI.BOARD._moves[i]);
				var moveSrcColumn = GUI.BOARD.getSrcColumn(GUI.BOARD._moves[i]);
				var moveSrcToken = GUI.BOARD.getToken(moveSrcLine, moveSrcColumn)
				if (this == moveSrcToken) {
					var moveTargetLine = GUI.BOARD.getCibleCoord(GUI.BOARD._moves[i])[0];
					var moveTargetColumn = GUI.BOARD.getCibleCoord(GUI.BOARD._moves[i])[1];
					var moveTargetCell = GUI.BOARD.getCell(moveTargetLine, moveTargetColumn);
					
					moveTargetCell.className = "focus";
					moveTargetCell.addEventListener("click", GUI.BOARD.doAction, false);
				}
			}
		},
		
		doAction: function() {
			GUI.BOARD.HANDLER._lineTarget = this.dataset.line;
			GUI.BOARD.HANDLER._columnTarget = this.dataset.column;
			
			GUI.BOARD.removeListenersCells();
			GUI.BOARD.HANDLER.doAction();
		},
		
		removeListenersTokens: function() {
			var tokens = document.querySelectorAll("#board div[data-type='pawn'], #board div[data-type='queen']");
			for(var i=0 ; i<tokens.length ;i++) {
				tokens[i].removeEventListener("click", GUI.BOARD.addListenersTargets, false);
			}
		},
		
		removeListenersCells: function() {
			var cells = document.querySelectorAll("#board td");
			for(var i=0 ; i<cells.length ;i++) {
				cells[i].removeEventListener("click", GUI.BOARD.doAction, false);
				cells[i].className = "";
			}
		},
	
		HANDLER: {
			_lineSrc: undefined,
			_columnSrc: undefined,
			_lineTarget: undefined,
			_columnTarget: undefined,
			
			__init: function(elmt, line, column) {
				this._element = elmt;
				this._lineSrc = line;
				this._columnSrc = column;
			},
			print: function() {
				console.log(this._lineSrc, this._columnSrc, this._lineTarget, this._columnTarget);
			},
			
			searchMovement: function() {
				var moves = GUI.BOARD._moves;
				
				for(var i = 0 ; i<moves.length ; i++) {
					var lineSource = GUI.BOARD.getSrcLine(moves[i]);
					var columnSource = GUI.BOARD.getSrcColumn(moves[i]);
					var lineTarget = GUI.BOARD.getCibleCoord(moves[i])[0];
					var columntarget = GUI.BOARD.getCibleCoord(moves[i])[1];

					if(this._lineSrc == lineSource && this._columnSrc == columnSource
					&& this._lineTarget == lineTarget && this._columnTarget == columntarget) {
						return moves[i];
					}
				}
				return;
			},
			
			doAction: function() {
				var move = this.searchMovement();
				console.log(move);
				if(GUI.BOARD.getMvtType(move) == "D") {
					this.doDisplacement();
				} else if (GUI.BOARD.getMvtType(move) == "C") {
					this.doCapture(move);
				}
				
				GUI.BOARD.removeListenersTokens();
				// GAME.MANAGER.doPlayMovementgit status(2, move);
			},
			
			doDisplacement: function() {
				var token = GUI.BOARD.getToken(this._lineSrc, this._columnSrc);
				var cell = GUI.BOARD.getCell(this._lineTarget, this._columnTarget);
				cell.appendChild(token);
			},
			doCapture:function(move) {
				this.doDisplacement();
				var line = GUI.BOARD.getCoordTaken(move)[0];
				var column = GUI.BOARD.getCoordTaken(move)[1];
				var token = GUI.BOARD.getToken(line, column);
				token.parentNode.removeChild(token);
			}
		}
	},
}

function main() {
	GUI.BOARD.__init();
	var queen = GUI.BOARD.buildToken("queen","black");
	GUI.BOARD.addToken(queen,3,3);
	var token = GUI.BOARD.buildToken("pawn","white");
	GUI.BOARD.addToken(token,3,2);
	
	var moves = [
		"D-20-30",
		"C-33-31-32",
		"C-22-42-32","D-33-34","D-33-43","D-33-35","D-33-36","D-33-37","C-33-30-32"
	];
	GUI.BOARD.initTurn(moves);
}

main();
