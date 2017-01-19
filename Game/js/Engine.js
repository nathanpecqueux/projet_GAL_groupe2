/**
 * Created by nathan on 13/12/16.
 */

"use strict";

var ENGINE = {
	BOARD: {
		_board: [[]],
		_tokenBlack: 0,
		_tokenWhite: 0,
		_history: [],
		
		__init: function() {
			this._board = [
				[0,0,0,0,0,0,0,0],
				[2,2,2,2,2,2,2,2],
				[2,2,2,2,2,2,2,2],
				[0,0,0,0,0,0,0,0],
				[0,0,0,0,0,0,0,0],
				[1,1,1,1,1,1,1,1],
				[1,1,1,1,1,1,1,1],
				[0,0,0,0,0,0,0,0],
			];
			
			this._tokenBlack = 16;
			this._tokenWhite = 16;
		},
		
		show: function() {
			var buffer = "";
			for(var i = 0 ; i<8 ;i++) {
				for(var j = 0 ; j<8 ; j++) {
					buffer += this.getCell(i, j) + " ";
				}
				buffer += "\n";
			}
			
			console.log(buffer);
			return;
		},
		
		getBoard: function() {
			return this._board;
		},
		
		copyBoard: function() {
			return this._board.slice(0);
		},
		
		setBoard: function(board) {
			this._board = board.slice(0);
			return;
		},
		
		getCell: function(line, column) {
			if (!this.isInBoard(line, column)) {
				throw new Error("Coordonnées incorrectes : sortie du plateau");
			}
			
			return this._board[line][column];
		},
		
		setCell: function(line, column, value) {
			if (!this.isInBoard(line, column)) {
				throw new Error("Coordonnées incorrectes : sortie du plateau");
			}
			
			this._board[line][column] = value;
			return;
		},
		
		isInBoard: function(line, column) {
			if (line<0 || line>=8 || column<0 || column>=8) {
				return false;
			}
			return true;
		},
		
		containsToken: function(line, column) {
			if (this.isInBoard(line, column)) {
				var tokenValue = this.getCell(line, column);
				if (tokenValue > 0 && tokenValue <= 4) {
					return true;
				} 
			}
			
			return false;
		},
		
		isEmpty: function(line, column) {
			if (this.isInBoard(line, column)) {
				var tokenValue = this.getCell(line, column);
				if (tokenValue == 0) {
					return true;
				} 
			}
			
			return false;
		},	

		addToken: function (token) {
			var value = this.getTokenValue(token.type, token.color);
			this.setCell(token.line, token.column, value);
			
			if (value % 2 == 1) {
				this._tokenWhite++;
			} else {
				this._tokenBlack++;
			}
			return;
		},
		
		removeToken: function (token) {
			var value = this.getCell(token.line, token.column);
			this.setCell(token.line, token.column, 0);
			
			if (value % 2 == 1) {
				this._tokenWhite--;
			} else {
				this._tokenBlack--;
			}
			
			return;
		},

		getTokenValue: function (type, color) {
			if (type == "pawn" && color == "white") {
				return 1;
			}
			if (type == "pawn" && color == "black") {
				return 2;
			}
			if (type == "queen" && color == "white") {
				return 3;
			}
			if (type == "queen" && color == "black") {
				return 4;
			}
			throw new Error("Valeur du jeton inconnue");
		},	
		
		/**
			Retourne un jeton du modèle
			@param	int
			@param	int
			@return	Object::token
		*/
		getToken: function(line, column) {
			if(!ENGINE.BOARD.containsToken(line, column)) {
				return {};
			}
			
			var tokenValue = ENGINE.BOARD.getCell(line, column);
			var token = {
				line: line, 
				column: column, 
				type: undefined,
				color: undefined
			};
				
			if(tokenValue == 1 || tokenValue == 2) {
				token.type = "pawn";
			} else if (tokenValue == 3 || tokenValue == 4) {
				token.type = "queen";
			} else {
				throw new Error("Type de la pièce inconnu");
			}
			
			if(tokenValue == 1 || tokenValue == 3) {
				token.color = "white";
			} else if (tokenValue == 2 || tokenValue == 4) {
				token.color = "black";
			} else {
				throw new Error("Couleur de la pièce inconnue");
			}
			
			return token;
		},
		
		buildToken: function(type, color, line, column) {
			if(type != "pawn" && type != "queen") {
				throw new Error("Type du jeton inconnu");
			}
			if(color != "black" && color != "white") {
				throw new Error("Couleur du jeton inconnue");
			}
			if(!ENGINE.BOARD.isInBoard(line, column)) {
				throw new Error("Coordonnées inconnues");
			}
			
			var token = {
				color: color,
				type: type,
				line: line,
				column: column
			};
			return token;
		},
		
		addMovement: function (move) {
			this._history.push(move);
		},
		
		getHistory: function () {
			return this._history;
		},
		
		/**
			Retourne l'historique des mouvements en fonction de la couleur (pair : white).
			@param	{string}
			@return	{[string]}
		*/
		getHistory$color: function (color) {
			var hist = this.getHistory();
			var histPlayer = [];
			var begin = 0;
			
			if (color == "black") {
				begin++;
			}
			
			for (var i = begin ; i<hist.length ; i=i+2) {
				histPlayer.push(hist[i]);
			}
			
			return histPlayer;
		},
	},
	
	LOGIC: {
		/**
			Surcharge la méthode pour lister les jetons
		*/
		getTokenAll: function(player) {
			if(typeof(player) == "undefined") {
				return this.getTokenAll$both();
			} 
			else if(typeof(player) == "string") {
				return this.getTokenAll$player(player);
			}
		},
	
		/**
			Liste les jetons du plateau
			@return	[token]
		*/
		getTokenAll$both: function() {
			var tokens = [];
			
			for(var i=0 ; i<8 ; i++) {
				for(var j=0 ; j<8 ; j++) {
					if(ENGINE.BOARD.containsToken(i,j)) {
						tokens.push(ENGINE.BOARD.getToken(i,j));
					}
				}
			}
			
			return tokens;
		},
		
		getTokenAll$player: function(player) {
			var tokens = this.getTokenAll$both();
			var tokensPlayer = [];
			
			for(let token of tokens) {
				if(token.color == player) {
					tokensPlayer.push(token);
				}
			}
			
			return tokensPlayer;
		},
		
		/**
			Retourne tous les déplacements possibles d'un jeton.
			@param	{Object::token}
			@param	{string}
			@return	{[Object::displacement]}
		*/
		getDisplacement: function(token) {
			var sens = this.getSens(token);
			var destinations = [];
			
			for (let s of sens) {
				var destination = this.getFreeDestinations(token, token, s);
				if (destination.length > 0) {
					for (let dest of destination) {
						var d = {};
						d.destination = dest;
						d.source = token;
						
						destinations.push(d);
					}
				}
			}
			
			return destinations;
		},
		
		/**
			Retourne les captures simples par un pion ou une dame.
			@param	{Object::token}
			@param	{BOARD}
			@param	{string}
			@return	{[Object::capture]}
		*/
		getCapture: function(token, board, backtrack) {	
			var sens = this.getSens(token, backtrack);
			
			var memory = ENGINE.BOARD.copyBoard();
			ENGINE.BOARD.setBoard(board);
			
			var captures = [];
			for (let s of sens) {
				var capture = this.getCaptureTo(token, s);
				if (Object.keys(capture).length > 0) {
					captures.push(capture);
				}
			}
			
			ENGINE.BOARD.setBoard(memory);
			return captures;
		},
		
		getSens: function (token, backtrack) {
			var sens = ["north", "east", "south", "west"];
			if (token.type == "queen") {
				var index = sens.indexOf(backtrack);
				if (index != -1) {
					sens.splice(index, 1);
				}
			} else if (token.type == "pawn") {
				if (token.color == "black") {
					var index = sens.indexOf("north");
				} else if (token.color == "white") {
					var index = sens.indexOf("south");
				}
				sens.splice(index, 1);
			}
			
			return sens;
		},
		
		/**
			Retourne une capture simple pour une direction donnée.
			@param	{Object::token}
			@param	{string}
			@return	{Object::capture}
		*/
		getCaptureTo: function(token, sens) {		
			var token = clone(token);
			var ennemy = this.getEnnemy(token, sens);
			
			if (Object.keys(ennemy).length === 0) {
				return {};
			}
			
			var destinations = this.getFreeDestinations(token, ennemy, sens);
			
			if (destinations.length == 0) {
				return {};
			}
			
			var capture = {};
			capture.source = token;
			capture.target = ennemy;
			capture.destinations = destinations;
			
			if (sens == "north") {
				capture.backtrack = "south";
			} else if (sens == "south") {
				capture.backtrack = "north";
			} else if (sens == "west") {
				capture.backtrack = "east";
			} else if (sens == "east") {
				capture.backtrack = "west";
			}
			
			return capture;
		},
		
		/**
			Retourne les destinations disponibles après une capture.
			@param	{Object::token}
			@param	{Object::token}
			@param	{string}
			@return	{[Object::coord]}
		*/
		getFreeDestinations: function (token, target, sens) {
			var target = clone(target);
			var searchDestinations = true;
			var destinations = [];
			
			while (searchDestinations) {
				target = this.moveTo(target.line, target.column, sens);
				
				if (ENGINE.BOARD.isInBoard(target.line, target.column)
				&& !ENGINE.BOARD.containsToken(target.line, target.column)) {
					var destination = clone(target);
					destinations.push(destination);
				} else {
					searchDestinations = false;
				}
				
				if (token.type == "pawn") {
					searchDestinations = false;
				}
			}
			
			return destinations;
		},
		
		/**
			Retourne le premier ennemi trouvé.
			@param	{Object::token}
			@param	{string}
			@return {Object::token}
		*/
		getEnnemy: function(token, sens) {
			var token = clone(token)
			var target = {line: token.line, column: token.column};
			var ennemy = {};
			var searchEnnemy = true;
			
			while (searchEnnemy) {
				target = this.moveTo(target.line, target.column, sens);

				if (token.type == "pawn" || !ENGINE.BOARD.isInBoard(target.line, target.column)) {
					searchEnnemy = false;
				} 
				if (ENGINE.BOARD.containsToken(target.line, target.column)) {
					ennemy = ENGINE.BOARD.getToken(target.line, target.column);
					searchEnnemy = false;
				}
			}
			
			if (Object.keys(ennemy).length > 0 && ennemy.color !== token.color) {
				return ennemy;
			}
			return {};
		},
		
		/**
			Retourne les coordonnées déplacées d'une case selon une direction spécifiée.
			@param	int
			@param	int
			@param	string
			@return	Object::coord
		*/
		moveTo: function (line, column, sens) {
			var coord = {line: line, column: column};
			switch  (sens) {
				case "north":
					coord.line--;
					break;
				case "south":
					coord.line++;
					break;
				case "west":
					coord.column--;
					break;
				case "east":
					coord.column++;
					break;
				default:
					throw new Error("Sens inconnu");
			}
			
			return coord;
		},
		
		/**
			Retourne les plus longues captures possibles par un jeton.
			@param	{Object::token}
			@return	{[Object::capture}}
		*/
		getCaptureAll: function(token) {
			var board = ENGINE.BOARD.copyBoard();
			var racine = {
				parent: null,
				source: token,
				target: null,
				backtrack: null,
				board: board
			}
			var captures = this.getCaptureAll$process([racine]);
			return captures;
		},
		
		/**
			Recherche les plus longues captures possibles par un jeton.
			@param	{[Object::capture]}
			@return	{[Object::capture]}
		*/
		getCaptureAll$process: function(captures) {
			var nextSources = [];
			for (let capture of captures) {
				var nextCaptures = this.getCapture(capture.source, capture.board, capture.backtrack);
				
				if (nextCaptures.length > 0) {
					for (let nc of nextCaptures) {
						for (let destination of nc.destinations) {
							var newBoard = this.updateBoard(capture.board, nc.source, nc.target, destination);
							var token = this.updateToken(capture.source, destination);
							
							var nextSource = {};
							nextSource.parent = capture;
							nextSource.source = token;
							nextSource.target = nc.target;
							nextSource.backtrack = nc.backtrack;
							nextSource.board = newBoard;
							
							nextSources.push(nextSource);
						}
					}
				}
			}
			
			if (nextSources.length == 0) {
				return captures;
			} else {
				return this.getCaptureAll$process(nextSources);
			}
		},
		
		updateToken: function (token, destination) {
			var token = clone(token);
			if ((token.color == "black" && destination.line == 7) 
			|| (token.color == "white" && destination.line == 0)) {
				token.type = "queen";
			}
			
			token.line = destination.line;
			token.column = destination.column;
			
			return token;
		},
		
		updateBoard: function(board, source, target, destination) {
			var board = board.map(function(arr) {
				return arr.slice();
			});
			
			board[source.line][source.column] = 0;
			board[target.line][target.column] = 0;
			board[destination.line][destination.column] = ENGINE.BOARD.getTokenValue(source.type, source.color);
			
			return board;
		},
		
		/**
			Sérialise les captures
			@param	Object:capture
			@return	[String]
		*/
		serializeCaptureAll: function(captures) {
			var serializedCaptureAll = [];
			for (let capture of captures) {
				var serializedCapture = this.serializeCapture(capture);
				serializedCaptureAll.push(serializedCapture);
			}
			
			return serializedCaptureAll;
		},
		
		/**
			Sérialise les captures.
			@param	{[Object::capture]}
			@return	{[string]}
		*/
		serializeCapture: function (capture) {
			var sources = [];
			var targets = [];
				
			var current = capture;
			while (current.parent != null) {
				sources.push({line: current.source.line, column: current.source.column});
				targets.push({line: current.target.line, column: current.target.column});
				current = current.parent;
			}
			
			sources.push({line: current.source.line, column: current.source.column});
			
			// sérialise la capture en fonction du nombre de prises
			var serializedCapture = "";
			if (targets.length == 0) {
				return serializedCapture;
			} else if (targets.length == 1) {
				serializedCapture += "C1-";
			} else {
				serializedCapture += "C" + targets.length + "-";
			}
			
			sources.reverse();
			targets.reverse();
			serializedCapture += sources[0].line + "" + sources[0].column;
			sources.splice(0,1);
			
			for(var i = 0 ; i<sources.length ; i++) {
				serializedCapture += "-" + targets[i].line + "" + targets[i].column;
				serializedCapture += "-" + sources[i].line + "" + sources[i].column;
			}
				
				
			return serializedCapture;
		},
		
		/**
			Sérialise les déplacements.
			@param	{[Object::displacement]}
			@return	{[string]}
		*/
		serializeDisplacement: function(displacements) {
			if (displacements.length == 0) {
				return "";
			}
			
			var serialDisplacementAll = [];
			for (let displacement of displacements) {
				var serialDisplacement = "D-";
				serialDisplacement += displacement.source.line + "" + displacement.source.column + "-";
				serialDisplacement += displacement.destination.line + "" + displacement.destination.column;
				
				serialDisplacementAll.push(serialDisplacement);
			}
			
			return serialDisplacementAll;
		},
		
		/**
			Récupère tous les mouvements possibles d'un jeton sous forme sérialisée.
			@param	{Object::token}
			@return	{[string]}
		*/
		getMovement: function (token) {
			var captures = this.getCaptureAll(token);
			if (captures.length > 1 || (captures.length == 1 && captures[0].target != null)) {
				captures = this.serializeCaptureAll(captures);
				return captures;
			}
			
			var displacements = this.getDisplacement(token);
			if (displacements.length > 0) {
				displacements = this.serializeDisplacement(displacements);
				return displacements;
			}
			
			return;
		},
		
		/**
			Récupère tous les mouvement possibles d'un joueur sous forme sérialisée.
			@param	{string}
			@param	{[string]}
		*/
		getMovementAll: function (color) {
			var tokens = this.getTokenAll(color);
			var moves = [];

			for (let token of tokens) {
				var movesToken = this.getMovement(token);
				if (typeof movesToken != "undefined" && movesToken.length > 0) {
					for (let m of movesToken) {
						moves.push(m);
					}
				}
			}
			
			var moves = this.filterMoves(moves);
			return moves;
		},
		
		filterMoves: function (moves) {
			// cherche le mouvement avec la plus grande priorité 0:deplacement et +1point par prise
			var maxValueMove = 0;
			for (let move of moves) {
				if (this.getValueMove(move) > maxValueMove) {
					maxValueMove = move[1];
				}
			}
			
			// filtre tout sauf les mouvements avec la valeur max
			var movesCopy = moves.slice(0);
			for (let move of movesCopy) {
				if (this.getValueMove(move) < maxValueMove) {
					moves.splice(moves.indexOf(move), 1);
				}
			}
			return moves;
		},
		
		getValueMove: function (move) {
			if (move[0] == "D") {
				return 0;
			} else if (move[0] == "C") {
				return move[1];
			}
		},
		
		/**
			Effectue un mouvement (déplacement ou capture) sur le plateau.
			@param	{string}
		*/
		doMovement: function (move) {
			if (move[0] == "D") {
				this.doMovement$displacement(move);
			} else if (move[0] == "C") {
				this.doMovement$captureAll(move);
			}
			ENGINE.BOARD.addMovement(move);
		},
		
		doMovement$displacement: function (move) {
			var split = move.split("-");
			var source = {line: split[1][0], column: split[1][1]};
			var destination = {line: split[2][0], column: split[2][1]};

			var sourceToken = ENGINE.BOARD.getToken(source.line, source.column);
			var newToken = ENGINE.BOARD.buildToken(sourceToken.type, sourceToken.color, destination.line, destination.column);
			this.upgradePawn(newToken);
			
			ENGINE.BOARD.addToken(newToken);
			ENGINE.BOARD.removeToken(sourceToken);
			
			return;
		},
		
		doMovement$captureAll: function (move) {
			var split = move.split("-");
			split.splice(0, 1);
			var sources = [];
			var targets = [];
			
			for (let i in split) {
				if (i % 2 == 0) {
					sources.push({line: split[i][0], column: split[i][1]});
				} else if (i % 2 == 1) {
					targets.push({line: split[i][0], column: split[i][1]});
				}
			}
			
			for (var i = 0, n = targets.length; i < n ; i++) {
				this.doMovement$capture(sources[0], targets[i], sources[1]);
				sources.splice(0, 1);
			}
			
			return;
		},
		
		doMovement$capture: function (source, captured, destination) {
			var sourceToken = ENGINE.BOARD.getToken(source.line, source.column);
			var targetToken = ENGINE.BOARD.getToken(captured.line, captured.column);
			var newToken = ENGINE.BOARD.buildToken(sourceToken.type, sourceToken.color, destination.line, destination.column);
			this.upgradePawn(newToken);

			ENGINE.BOARD.addToken(newToken);
			ENGINE.BOARD.removeToken(targetToken);
			ENGINE.BOARD.removeToken(sourceToken);
			return;
		},
		
		/**
			Vérifie si la partie est terminée :
			- Retourne 0 si la partie continue
			- Retourne 1 si la partie est nulle
			- Retourne la couleur gagnante en cas de vainqueur
			@return	Int
		*/
		victory: function () {
			if (this.draw()) {
				return 1;
			} else if (ENGINE.BOARD._tokenBlack > 0 && ENGINE.BOARD._tokenWhite > 0 ) {
				return 0;
			} else if (ENGINE.BOARD._tokenBlack == 0) {
				return "white";
			} else if (ENGINE.BOARD._tokenWhite == 0) {
				return "black";
			} else {
				throw new Error("Détection de la fin du jeu introuvable.");
			}
		},
		
		draw: function () {
			var hist = ENGINE.BOARD.getHistory();
			var index = hist.length - 25;
			if (index < 0) {
				return false;
			}
			hist = hist.splice(hist.length-25, 25);
			for (let move of hist) {
				if (move[0] != "D") {
					return false;
				}
			}
			return true;
		},
		
		upgradePawn: function (token) {
			if (token.type == "pawn") {
				if (token.color == "black" || token.color == "white") {
					if (token.line == 7 || token.line == 0) {
						token.type = "queen";
						var value = ENGINE.BOARD.getCell(token.line, token.column);
						value += 2;
						ENGINE.BOARD.setCell(token.line, token.column, value);
					}  
				}
			}
			
			return token;
		},
	},
	
	AI: {
		_memory: {},
		
		memento: function (board, tokenWhite, tokenBlack) {
			board = ENGINE.BOARD.copyBoard();
			this._memory = {
				board: board,
				tokenWhite: tokenWhite,
				tokenBlack: tokenBlack,
			};
		},
		
		restaure: function () {
			ENGINE.BOARD.setBoard(this._memory.board);
			ENGINE.BOARD._tokenBlack = this._memory.tokenBlack;
			ENGINE.BOARD._tokenWhite = this._memory.tokenWhite;
			return
		},
		
		simulate: function (player) {
			// this.memento(board, ENGINE.BOARD._tokenBlack, ENGINE.BOARD._tokenWhite);
			// ENGINE.BOARD.setBoard(board);
			
			var turn = 0; var color;
			if (player == "black") {
				turn = 1;
			}
			
			while (ENGINE.LOGIC.victory() == 0) {
				if (turn % 2 == 0) {
					color ="white";
				} else {
					color ="black";
				}
				var moves = ENGINE.LOGIC.getMovementAll(color);
				var value = Math.floor((Math.random() * moves.length));
				var move = moves[value];
				
				ENGINE.LOGIC.doMovement(move);
				
				turn++;
			}
			return ENGINE.LOGIC.victory();
		},
	}
};

function clone(obj) {
  if (obj === null || typeof(obj) !== 'object' || 'isActiveClone' in obj)
	return obj;

  if (obj instanceof Date)
	var temp = new obj.constructor(); //or new Date(obj);
  else
	var temp = obj.constructor();

  for (var key in obj) {
	if (Object.prototype.hasOwnProperty.call(obj, key)) {
	  obj['isActiveClone'] = null;
	  temp[key] = clone(obj[key]);
	  delete obj['isActiveClone'];
	}
  }

  return temp;
}
