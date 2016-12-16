/**
turn :
1 : récupérer joueur courant
2 
  2.1 Si HUMAN : ajouter les événements sur chaque pion source
	Si au clic pion mouvement
		2.1.1 : retirer tous les events du board
		2.1.2 : ajouter les events aux cellules sources
	Sinon (rien)
  2.2 Si AI : jouer aléatoirement
3 Fin du tour
*/

var GAME = {
	MANAGER: {
		__init: function() {
			Engine.BOARD.__init();
			Engine.PLAYERS.__init();
			GUI.BOARD.__init();
			GUI.PLAYERS.__init()
		},
		
		play: function() {
			this.newTurn();
		},
		
		newTurn: function() {
			ENGINE.BOARD.newTurn();
			var currentPlayer = ENGINE.PLAYERS.currentPlayer();
			var type = ENGINE.PLAYERS.getType(currentPlayer);
			
			GUI.PLAYERS.update(currentPlayer);
			
		git branc	if(type == "human") {
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
				this.doPlayMovement();
				break;
				
				case 2:
				this.endGame();
				break;
			}
		},
		
		doPlayAI: function() {
			
		},
		
		doPlayMovement: function(step, move) {
			switch(parseInt(step)) {
				case 1:
				GUI.EVENTS.BOARD.initTurn();
				break;
				
				case 2:
				ENGINE.BOARD.play(move);
				this.doPlay(2);
				break;
			}
		},
		
		endGame: function() {			
			if(ENGINE.BOARD.victory() != 0) {
				GUI.endGame();
			} else {
				this.newTurn();
			}
		},
	},
} 
