"use strict";

var GAME = {
	MANAGER: {
		_turn : 0,
		
		__init: function () {
			ENGINE.BOARD.__init();
			GAME.PLAYER.__init();
			GUI.BOARD.__init();
			this._turn = 0;
			
			GAME.PLAYER.add("Manon");
			GAME.PLAYER.add("Thomas");
		},
		
		run: function() {
			this.playTurn(1);
		},
		
		playTurn: function(step) {
			switch(parseInt(step)) {
				case 1:
				this.newTurn();
				break;
				
				case 2:
				this.doMovement();
				break;
				
				case 3:
				this.victory();
				break;
			}
		},
		
		doMovement: function() {
			var currentPlayer = this.getCurrentPlayer();
			var type = "human";
			var moves = ENGINE.LOGIC.getMovementAll(currentPlayer);
			
			if(type == "human") {
				GUI.EVENT.init(moves);
			}
			// if(type == "AI") {
				// var coord = Pentago.AI.generatePutMarble();
				// setTimeout(function (){
					// Game.ViewModel.doMovement(coord);
					// Game.Manager.playTurn(2);
				// }, 500);
				
			// }
		},
		
		getMovement: function (move) {
			
		},
		
		rotation: function() {
			var currentPlayer = Pentago.Manager.currentPlayer();
			var type = Pentago.Players.getType(currentPlayer);
			
			if(type == "human") {
				Events.Board.addListenerAllRotations();
			}
			if(type == "AI") {
				var rotation = Pentago.AI.generateRotation();
				if(rotation[0] == "c") {
					setTimeout(function (){
						Game.ViewModel.rotation(rotation[1]);
						Game.Manager.playTurn(4);
					}, 500);
				} else {
					setTimeout(function (){
						Game.ViewModel.rotationReverse(rotation[1]);
						Game.Manager.playTurn(4);
					}, 500);
				}
			}
		},
		
		getCurrentPlayer: function () {
			var currentPlayer = (this._turn % 2) + 1;
			if (currentPlayer == 1) {
				var color = "white";
			} else if (currentPlayer == 2) {
				var color = "black";
			}
			return color;
		},
		
		newTurn: function() {
			var currentPlayer = this.getCurrentPlayer();
			var type = "human";
			
			if(type == "human") {
				this._turn++;
				this.playTurn(2);
			}
			// if(type == "AI") {
				// setTimeout(function (){
					// Game.ViewModel.newTurn();
					// Game.Manager.playTurn(1);
				// }, 500);
			// }
		},
		
		victory: function () {
			var victory = ENGINE.LOGIC.victory();
			if (victory == 0) {
				this.playTurn(1);
			} else if (victory == 1) {
				this.showWinner(victory);
			} else if (victory == "white" || victory == "black") {
				this.showWinner(victory);
			}
			
			return;
		},
		
		showWinner: function (value) {
			console.log("Jeton noir : " + ENGINE.BOARD._tokenBlack);
			console.log("Jeton blanc : " + ENGINE.BOARD._tokenWhite);
			if (value == 1) {
				console.log("Match nul.");
			} else if (value == "white") {
				console.log("Le gagnant est blanc.");
			} else if (value == "black") {
				console.log("Le gagnant est noir.");
			}
		}
	},
		
	ViewModel: {
		putMarble: function(coord) {
			Pentago.Engine.putMarble(coord);
			GUI.Board.putMarble(coord);
		},
		
		rotation: function(subBoard) {
			Pentago.Engine.rotation(subBoard);
			GUI.Board.rotate(subBoard);
		},
		rotationReverse: function(subBoard) {
			Pentago.Engine.rotationReverse(subBoard);
			GUI.Board.rotateReverse(subBoard);
		},
		
		newTurn: function() {
			// GAME.Manager.newTurn();
			// GUI.Players.update();
		},
		
		end: function() {
			Events.Board.clearListenerAllCells();
			Events.Board.clearListenerAllRotations();
			
			this.showResult();
		},
		showResult: function() {
			setTimeout(function (){
				var result = document.createTextNode(Pentago.Manager.getResult());
				var blockResult = document.querySelector("#result");
				
				blockResult.appendChild(result);
				blockResult.className = "active";
			}, 500);
		},
	},
	
	PLAYER: {
		_players: [],
		_maxPlayers: 2,
		
		__init: function () {
			this._players = [];
			this._maxPlayers = 2;
		},
		
		add: function (name, type) {			
			if (this._players.length < 2) {
				var player = {
					name: name,
					type: type
				};
				this._players.push(player);
			} else {
				throw new Error("Nombre de joueurs maximum atteint");
			}
			return;
		},
		
		remove: function (id) {
			if (id >= 0 && id < this._maxPlayers) {
				this._players.splice(id, 1);
			}
		},
		
		show: function () {
			console.log("Players : ");
			for (let i in this._players) {
				console.log("\tplayer: {num: " + i + ", name: " + this._players[i].name+ "}");
			}
		}, 
	}
};
