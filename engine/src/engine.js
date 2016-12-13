/**
 * Created by nathan on 13/12/16.
 */

'use strict';

var Engine = function () {
    var board;
    board=new Array(8);
    var actualPlayer = "white";

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

    this.tokenNumber = function(color){
        var count=0;
        for(var line=0;line<8;line++) {
            for (var column = 0; column < 8; column++) {
                if(this.board[line][column] == color){
                    count++;
                }
            }
        }
        return count;
    }

    this.getActualPlayer = function () {
        return actualPlayer;
    }

    this.changePlayer = function () {
        if (actualPlayer == "white"){
            actualPlayer = "black";
        }else{
            actualPlayer = "white";
        }
    }

    this.convert = function(position){
        var pos;
        pos[0] = position[i].charCodeAt(0) - 65;
        pos[1] = position[i].charCodeAt(1) - 49;
        return pos;
    }

    this.getColor = function (position) {
        var column = position[i].charCodeAt(0) - 65;
        var line = position[i].charCodeAt(1) - 49;
        return this.board[pos[0]][pos[1]] == 0;
    }

    this.moveForward = function(position) {
        var forward;
        if (getColor(position) == 'w'){
            forward = (position[0]+1);
        }else if (getColor(position) == 'b'){
            forward = (position[0]-1);
        }else if(getColor(this.board[forward][position[1]]) == 0){
            return (position[0]);
        }else{
            return (-1);
        }
    }

    this.moveRight = function(position){
        var right;
        if (position[0] != 8){
            return position[1]+1;
        }else{
            return -1;
        }
    }

    this.moveLeft = function(position){
        var left;
        if (position[0] != 0){
            return position[1]-1;
        }else{
            return -1;
        }
    }


};
