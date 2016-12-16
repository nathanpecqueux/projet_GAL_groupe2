"use strict";

var GAME = {
	MANAGER: {
		__init: function() {
			ENGINE.initBoard();
			GUI.BOARD.__init();
		},
		
		play: function() {
			this.newTurn();
		},
		
		newTurn: function() {
			ENGINE.changePlayer();
			var currentPlayer = ENGINE.getActualPlayer();
			var type = "human";

			GUI.PLAYER.update(currentPlayer);
			
			if(type == "human") {
				this.doPlay(1);
			} else if(type == "AI") {
				setTimeout(function (){
					this.doPlayAI();
				}, 500);
			}
		},
		
		doPlay: function(step) {
			switch(parseInt(step)) {
				case 1:
				this.doPlayMovement(1);
				break;
				
				case 2:
				this.endGame();
				break;
			}
		},
		/*
		doPlayAI: function() {
			
		},
		*/
		doPlayMovement: function(step, move) {
			switch(parseInt(step)) {
				case 1:
				var moves = ENGINE.movePossFormat();
				console.log("moves : " + moves);
				//GUI.BOARD.initTurn(moves);
				break;
				
				case 2:
				ENGINE.BOARD.play(move);
				this.doPlay(2);
				break;
			}
		},
		/*
		endGame: function() {			
			if(ENGINE.BOARD.victory() != 0) {
				GUI.endGame();
			} else {
				this.newTurn();
			}
		},
		* */
	},
} 
