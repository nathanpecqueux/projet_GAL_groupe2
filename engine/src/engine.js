/**
 * Created by nathan on 13/12/16.
 */

'use strict';

var Engine = function () {
    var board;
    board=new Array(8);

    this.initBoard = function () {
        this.board =
            [
                [0,0,0,0,0,0,0,0],
                ['w','w','w','w','w','w','w','w'],
                ['w','w','w','w','w','w','w','w'],
                [0,0,0,0,0,0,0,0],
                [0,0,0,0,0,0,0,0],
                ['b','b','b','b','b','b','b','b'],
                ['b','b','b','b','b','b','b','b'],
                [0,0,0,0,0,0,0,0]
            ];
        return this.board;
    }

    this.nbJetons

};
