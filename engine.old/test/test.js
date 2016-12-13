/**
 * Created by nathan on 13/12/16.
 */

'use strict'

var DameTestCase= TestCase("DameTestCase");
var engine = new Engine();
DameTestCase.prototype.testStory1 = function () {
    var board=engine.init;
    for(var i=0; i<8; i++){
        assertTrue(board[i].equals([0,0,0,0,0,0,0,0]));
    }
};
