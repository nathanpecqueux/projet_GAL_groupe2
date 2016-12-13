/**
 * Created by François on 13/12/16.
 */

'use strict';

var DameTestCase= TestCase("DameTestCase");
var engine = new Engine();

DameTestCase.prototype.testStory1 = function () {
    var board=engine.initBoard();
    for(var line=0;line<8;line++) {
        for (var column = 0; column < 8; column++) {
            if(line>0&& line<3)
                assertTrue(board[0][0] == 'w');
            else if(line>4 && line<7)
                assertTrue(board[0][0] == 'b');
            else
                assertTrue(board[0][0] ==0);
        }
    }
};


DameTestCase.prototype.testStory2 = function () {
    assertTrue(engine.tokenNumber('w') == 16);
    assertTrue(engine.tokenNumber('b') == 16);
};

DameTestCase.prototype.testStory3 = function(){
    
}