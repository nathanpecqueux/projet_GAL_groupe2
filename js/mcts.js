"use strict";

// tree = [node]
// node = {id, id_parent, board, wins, total}
// ? mouvement

var AI = {
	TREE: {
		_tree: [],

		__init: function(p_board, possibleMoves, p_player) {
			var root = {
				parent: null,
				childs: [],
				board: p_board,
				move: ,
				moves: possibleMoves,
				win: 0,
				total: 0,
				player: p_player,
				score:0
			};
			
			this._tree.push(root);
			return root;
		},

		createNode: function(parent, p_board, possiblesMoves, p_player) {					
			var node = {
				parent: {},
				childs: [],
				board: p_board,
				moves: possiblesMoves,
				win: 0,
				total: 0,
				player: p_player,
				score:0
			};
			
			this._tree.push(node);
			return node;
		},

		size: function() {
			return this._tree.length;
		},

		show: function() {
			var buffer = "";
			for(let node of this._tree) {
				buffer += "id: " + node.id + ", ";
				buffer += "parent: " + node.parent + ", ";
				buffer += "board: " + node.board + ", ";
				buffer += "moves: " + node.moves + ", ";
				buffer += "wins: " + node.win + ", ";
				buffer += "total: " + node.total + ", ";
				buffer += "player: " + node.total + "\n";
			}
			console.log(buffer);
		},

		/**
		 * Renvoie le noeud parent (degré 1)
		 * @return	node
		 * */
		getParent: function(node) {
			return this.getNode(node.parent);
		},

		/**
		 * Renvoie le noeud
		 * @return	node
		 * */
		 getNode: function(id) {
			 for(let current of this._tree) {
				if(id == current.id) {
					return current;
				}
			}
			return null;
		 },
		 
		 incWin: function(node) {
			 node.win++;
		 },
		 
		 incTotal: function(node) {
			 node.total++;
		 },
		 
	},
	
	UCT: {
		search: function() {
			AI.TREE.__init(board, moves);
			
			var root = AI.TREE.getNode(0);
			var currentNode = root;
			var result;
			var nbSimulation = 0;
			while(n < 10) {
				currentNode = this.treePolicy(currentNode);
				// copy of board
				result = defaultPolicy(currentNode.board, currentNode.player);
				this.backUp(currendNode, result);
				
				nbSimulation++;
			}
			// il faut l'action qui correspond au bestChild
			return bestChild(root);
		},

		treePolicy: function(node) {
			
		},
		
		expand: function() {
			
		},
		
		bestChild: function(node) {
			
			for(let child of AI.TREE.getChilds(node)){
					child.score = this.UCB(node, child);
			}
			
			// retourner le children qui a le meilleur score
			var bestScore = -1;
			var bestChild;
			for(let child of AI.TREE.getChilds(node)){
				if(child.score > bestScore)
					score = child.score;
					bestChild = child;
				}
			}
			return bestChild;
		},
		
		UCB: function(parent, child){
			return (child.win/child.total) + 0.2 * sqrt(ln(parent.win)/child.total);
		}
		
		defaultPolicy: function() {
			// result = appel moteur simulation (node.plateau, node.player)
		},
		
		backUp: function(node, result) {
			var n;
			while(typeof(node) != null) {
				if (result == 1) {
					n = 0;
				} else if (result == -1) {
					n = 1;
				}
				
				if(result != 0 && n % 2 == 0) {
					AI.TREE.incWin();
				}
				
				AI.TREE.incTotal();
					
				node = AI.TREE.getNode(node.parent);
				n++;
			}
		}
	}
}

function main() {
	TU_02();
}


main()
