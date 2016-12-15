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
};
//joueur noir bouge un pion, puis joueur blanc attaque
DameTestCase.prototype.testAttackLeft = function(){
    engine.initBoard();
    //JBlanc avance
    engine.tokenPlayer();
    engine.movePossible();
    engine.moveCapture("21","31");
    //JNoir avance
    engine.changePlayer();
    engine.tokenPlayer();
    engine.movePossible();
    engine.moveCapture("52","42");
    //JBlanc avance
    engine.changePlayer();
    engine.tokenPlayer();
    engine.movePossible();
    engine.moveCapture("31","41");
    //JNoir avance
    engine.changePlayer();
    engine.tokenPlayer();
    engine.movePossible();
    engine.moveCapture("42","40");
    engine.changePlayer();

    assertTrue(engine.getColor("41")==0);
    assertTrue(engine.getColor("40")==2);
};

//Le noir capture de 53 a 51, le pion blanc meurt
DameTestCase.prototype.testAttackRight = function(){
    engine.initBoard();
    //JBlanc avance
    engine.tokenPlayer();
    engine.movePossible();
    engine.moveCapture("21","31");
    //JNoir avance
    engine.changePlayer();
    engine.tokenPlayer();
    engine.movePossible();
    engine.moveCapture("52","42");
    //JBlanc avance
    engine.changePlayer();
    engine.tokenPlayer();
    engine.movePossible();
    engine.moveCapture("31","41");
    //JNoir avance
    engine.changePlayer();
    engine.tokenPlayer();
    engine.movePossible();
    engine.moveCapture("72","62");
    engine.changePlayer();
    //JBLANC CAPTURE
    engine.changePlayer();
    engine.tokenPlayer();
    engine.movePossible();
    engine.moveCapture("41","43");
    engine.changePlayer();

    assertTrue(engine.getColor("42")==0);
    assertTrue(engine.getColor("43")==1);

};

DameTestCase.prototype.testChangePlayer = function(){
    engine.changePlayer();
    assertTrue(engine.getActualPlayer()=="black");
};
