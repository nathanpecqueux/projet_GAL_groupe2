"use strict";

var GAME = {
	MANAGER: {
		_turn : 0,
		
		__init: function () {
			ENGINE.BOARD.__init();
			GAME.PLAYER.__init();
			GUI.BOARD.__init();
			this._turn = 0;
			
			GAME.PLAYER.add("Manon", "Human");
			GAME.PLAYER.add("Thomas", "AI1");
			
			GAME.PLAYER.updateGUI();
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
			var type = GAME.PLAYER.getType(currentPlayer);
			var moves = ENGINE.LOGIC.getMovementAll(currentPlayer);
			
			if(type == "Human") {
				GUI.EVENT.init(moves);
			} else if (type == "AI1") {
				var move = AI.generateMove(1, moves);
				setTimeout(function () {
					ENGINE.LOGIC.doMovement(move);
					GUI.BOARD.doMovement(move);
					GAME.MANAGER.playTurn(3);
				}, 500);
			} else if (type == "AI2") {
				var move = AI.generateMove(2, moves);
				setTimeout(function () {
					ENGINE.LOGIC.doMovement(move);
					GUI.BOARD.doMovement(move);
					GAME.MANAGER.playTurn(3);
				}, 0);
			}
		},
		
		getCurrentPlayer: function () {
			var currentPlayer = (this._turn % 2) + 1;
			if (currentPlayer == 1) {
				var color = "black";
			} else if (currentPlayer == 2) {
				var color = "white";
			}
			return color;
		},
		
		newTurn: function() {
			this._turn++;
			var currentPlayer = this.getCurrentPlayer();
			GUI.PLAYER.updateTurn(currentPlayer);
			var infoBox = document.querySelector("#info p");
			infoBox.innerHTML = "Tour n<sup>o</sup>" + this._turn;

			var type = GAME.PLAYER.getType(currentPlayer);
			if(type == "Human" || type == "AI2") {
				this.playTurn(2);
			} else if (type == "AI1") {
				setTimeout(function () {
					GAME.MANAGER.playTurn(2);
				}, 500);
			} else if (type == "AI2") {
				setTimeout(function () {
					GAME.MANAGER.playTurn(2);
				}, 0);
			}
			
			return;
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
			if (value == 1) {
				var result = "Match nul";
			} else if (value == "white") {
				var result = "Le gagnant est blanc.";
			} else if (value == "black") {
				var result = "Le gagnant est noir.";
			}
			
			var infoBox = document.querySelector("#info p");
			infoBox.innerHTML = result;
		}
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
		
		getType: function (color) {
			if (color == "white") {
				var n = 0;
			} else if (color == "black") {
				var n = 1;
			}
			
			return this._players[n].type;
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
		
		updateGUI: function () {
			for (var i=0, n = this._players.length ; i<n ; i++) {
				GUI.PLAYER.add(i, this._players[i]);
			}
		},
	}
};
