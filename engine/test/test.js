/**
 * Created by François on 13/12/16.
 */

'use strict';

var DameTestCase= TestCase("DameTestCase");
var engine = new Engine();

DameTestCase.prototype.testInit = function () {
    var board=engine.initBoard();
    for(var line=0;line<8;line++) {
        for (var column = 0; column < 8; column++) {
            if(line>0 && line<3)
                assertTrue(board[line][column] == 1);
            else if(line>4 && line<7)
                assertTrue(board[line][column] == 2);
            else
                assertTrue(board[0][0] ==0);
        }
    }
};

DameTestCase.prototype.testNumberOfToken = function () {
    assertTrue(engine.tokenNumber(1) == 16);
    assertTrue(engine.tokenNumber(2) == 16);
};

DameTestCase.prototype.testActualPlayer = function(){
    assertTrue(engine.getActualPlayer()=="white");
};


//DEUX FONCTIONS PAREIL ?
DameTestCase.prototype.testListePion = function(){
    engine.tokenPlayer();
    var tokenWhite = engine.getPlayerToken("white");
    assertTrue(tokenWhite[0][0]=="10");
};

DameTestCase.prototype.testListePion2 = function(){
    engine.tokenPlayer();
};

DameTestCase.prototype.testCoupPossible = function(){
    engine.movePossible();
    var possWhite = engine.getPlayerPoss("white");
    assertTrue(possWhite[0]=="D,20,30");
};

DameTestCase.prototype.testColor= function(){
    assertTrue(engine.getColor("10")==1);
    assertTrue(engine.getColor("00")==0);
};

DameTestCase.prototype.testGet = function(){
    assertTrue(engine.getForward("20")=="30" );
    assertTrue(engine.getLeft("20")=="-1");
    assertTrue(engine.getRight("20")=="-1");
};


DameTestCase.prototype.testMove = function(){
    engine.move("20","30");
    assertTrue(engine.getColor("20")==0);
    assertTrue(engine.getColor("30")==1);
    engine.changePlayer();
    engine.move("50","40");
};

//Joueur blanc attaque joueur noir
DameTestCase.prototype.testAttackFront = function(){
    engine.changePlayer();
    engine.tokenPlayer();
    engine.movePossible();
    engine.moveCapture("30","50");
    assertTrue(engine.getColor("40")==0);
    engine.printBoard();
};
//joueur noir bouge un pion, puis joueur blanc attaque
DameTestCase.prototype.testAttackRight = function(){
    //on libere la place pour le joueur blanc
    engine.changePlayer();
    engine.tokenPlayer();
    engine.movePossible();
    engine.move("52","42");
    //on prend le pion noir
    engine.changePlayer();
    engine.tokenPlayer();
    engine.movePossible();
    engine.moveCapture("50","52");
    //on test si pion noir meurt
    assertTrue(engine.getColor("51")==0);
    engine.printBoard();
};

//Le noir capture de 53 a 51, le pion blanc meurt
DameTestCase.prototype.testAttackLeft = function(){
    engine.changePlayer();
    engine.tokenPlayer();
    engine.movePossible();
    engine.moveCapture("53","51");
    assertTrue(engine.getColor("52")==0);
    engine.printBoard();

};

DameTestCase.prototype.testChangePlayer = function(){
    assertTrue(engine.changePlayer()=="black");
};
