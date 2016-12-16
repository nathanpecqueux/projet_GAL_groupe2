/**
 * Created by nathan on 13/12/16.
 */

'use strict'

var DameTestCase= TestCase("DameTestCase");
var engine = new Engine();

DameTestCase.prototype.testStory1 = function () {
    var board=engine.initBoard();

    for(var line=0;line<8;line++) {
        for (var column = 0; column < 8; column++) {
            assertTrue(board[0][0] == 0);
        }
    }

};
