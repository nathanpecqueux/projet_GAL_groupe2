/**
 * Created by nathan on 13/12/16.
 */

'use strict';

var Engine = function () {
    var board;
    board=new Array(8);

    this.init=new function () {
        for(var line=0; line<8;line++){
            for(var column=0; column<8;column++){
                board[line]=new Array(8);
                board[line][column]=0;
            }
        }
        return board;
    }

};
