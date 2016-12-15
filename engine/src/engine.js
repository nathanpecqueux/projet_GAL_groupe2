/**
 * Created by nathan on 13/12/16.
 */

'use strict';

/*
 1 : token white
 2 : token black
 3 : queen white
 4 : black queen
 */

var Engine;
Engine = function () {
    //var board = new Array(8);
    var actualPlayer;
    var tokenWhite = [];
    var tokenBlack = [];
    var moveWhitePoss;
    var moveBlackPoss;

    this.initBoard = function () {
        actualPlayer = "white";
        this.board =
            [
                [0, 0, 0, 0, 0, 0, 0, 0],
                [1, 1, 1, 1, 1, 1, 1, 1],
                [1, 1, 1, 1, 1, 1, 1, 1],
                [0, 0, 0, 0, 0, 0, 0, 0],
                [0, 0, 0, 0, 0, 0, 0, 0],
                [2, 2, 2, 2, 2, 2, 2, 2],
                [2, 2, 2, 2, 2, 2, 2, 2],
                [0, 0, 0, 0, 0, 0, 0, 0]
            ];
        return this.board;
    };

    this.initBoardTestQueen = function () {
        actualPlayer = "white";
        this.board =
            [
                [0, 0, 0, 0, 0, 0, 0, 0],
                [0, 0, 0, 0, 0, 0, 0, 0],
                [0, 0, 0, 0, 0, 0, 0, 0],
                [0, 0, 0, 0, 0, 0, 0, 0],
                [0, 0, 0, 0, 0, 0, 0, 2],
                [0, 0, 0, 0, 0, 0, 0, 0],
                [1, 0, 0, 0, 0, 0, 0, 0],
                [0, 0, 0, 0, 0, 0, 0, 0]
            ];
        return this.board;
    };

    this.initBoardDernier = function () {
        actualPlayer = "white";
        this.board =
            [
                [0, 0, 0, 2, 0, 0, 0, 0],
                [0, 0, 0, 2, 0, 0, 0, 0],
                [0, 0, 0, 0, 0, 0, 0, 0],
                [0, 0, 0, 0, 0, 0, 0, 0],
                [0, 0, 2, 3, 0, 0, 2, 0],
                [0, 0, 0, 2, 0, 0, 0, 0],
                [1, 0, 0, 0, 0, 0, 0, 0],
                [0, 0, 0, 0, 0, 0, 0, 0]
            ];
        return this.board;
    };

    this.printBoard = function () {
     for (var line = 0; line < 8; line++) {
     console.log(this.board[line]);
     }
     console.log("");
     };

    this.tokenNumber = function (color) {
        var count = 0;
        for (var line = 0; line < 8; line++) {
            for (var column = 0; column < 8; column++) {
                if (this.board[line][column] == color) {
                    count++;
                }
            }
        }
        return count;
    };

    this.getActualPlayer = function () {
        return actualPlayer;
    };

    this.changePlayer = function () {
        if (actualPlayer == "white") {
            actualPlayer = "black";
        } else {
            actualPlayer = "white";
        }
    };

    this.getColor = function (pos) {
        return this.board[pos[0]][pos[1]];
    };

    this.getForward = function (position) {
        var forward = 0;
        if (this.getColor(position) == 1) {
            forward = parseInt(position[0]) + 1;
        } else if (this.getColor(position) == 2) {
            forward = parseInt(position[0]) - 1;
        }
        if (this.board[forward][position[1]] == 0) {
            return (forward + (position[1]));
        } else {
            return "-1";
        }
    };

    this.getRight = function (position) {
        if (position[1] != 7 && this.getColor(position[0] + (parseInt(position[1]) + 1)) == 0) {
            return position[0] + (parseInt(position[1]) + 1);
        } else {
            return "-1";
        }
    };

    this.getLeft = function (position) {
        if (position[1] != 0 && this.getColor(position[0] + (parseInt(position[1]) - 1)) == 0) {
            return position[0] + (parseInt(position[1]) - 1);
        } else {
            return "-1";
        }
    };

    this.tokenPlayer = function () {
        tokenWhite = [];
        tokenBlack = [];
        for (var line = 0; line < 8; line++) {
            for (var column = 0; column < 8; column++) {
                if (this.board[line][column] == 1) {
                    tokenWhite.push([String(line) + String(column), "p"]);
                } else if (this.board[line][column] == 3) {
                    tokenWhite.push([String(line) + String(column), "q"]);
                } else {
                    if (this.board[line][column] == 2) {
                        tokenBlack.push([String(line) + String(column), "p"]);
                    } else if (this.board[line][column] == 4) {
                        tokenBlack.push([String(line) + String(column), "q"]);
                    }
                }
            }
        }
    };

    this.getPlayerToken = function (player) {
        if (player == "white") {
            return tokenWhite;
        } else {
            return tokenBlack;
        }
    };

    this.getPlayerPoss = function (player) {
        if (player == "white") {
            return moveWhitePoss;
        } else {
            return moveBlackPoss;
        }
    };

    this.getNeighborsEnemy = function (pos) {
        var neighborsEnemy = [];
        var line = pos[0];
        var col = pos[1];
        if (this.getColor(pos) == 1) {
            if (this.getColor(parseInt(line) + 1 + col) == 2 || this.getColor(parseInt(line + 1) + col) == 4) {
                if (this.getColor(parseInt(line) + 2 + col) == 0) {
                    neighborsEnemy.push(parseInt(line) + 2 + col);
                }
            }
            if (this.getColor(line + (parseInt(col) + 1)) == 2 || this.getColor(line + (parseInt(col) + 1)) == 4) {
                if (this.getColor(line + (parseInt(col) + 2)) == 0) {
                    neighborsEnemy.push(line + (parseInt(col) + 2));
                }
            }
            if (this.getColor(line + (parseInt(col) - 1)) == 2 || this.getColor(line + (parseInt(col) - 1)) == 4) {
                if (this.getColor(line + (parseInt(col) - 2)) == 0) {
                    neighborsEnemy.push(line + (parseInt(col) - 2));
                }
            }
        } else if (this.getColor(pos) == 2) {
            if (this.getColor(parseInt(line) - 1 + col) == 1 || this.getColor(parseInt(line - 1) + col) == 3) {
                if (this.getColor(parseInt(line) - 2 + col) == 0) {
                    neighborsEnemy.push(parseInt(line) - 2 + col);
                }
            }
            if (this.getColor(line + (parseInt(col) + 1)) == 1 || this.getColor(line + (parseInt(col) + 1)) == 3) {
                if (this.getColor(line + (parseInt(col) + 2)) == 0) {
                    neighborsEnemy.push(line + (parseInt(col) + 2));
                }
            }
            if (this.getColor(line + (parseInt(col) - 1)) == 1 || this.getColor(line + (parseInt(col) - 1)) == 3) {
                if (this.getColor(line + (parseInt(col) - 2)) == 0) {
                    neighborsEnemy.push(line + (parseInt(col) - 2));
                }
            }
        }
        return neighborsEnemy;
    };

    this.movePossible = function () {
        moveWhitePoss = [];
        moveBlackPoss = [];
        for (var moveWhite = 0; moveWhite < tokenWhite.length; moveWhite++) {
            var neighborsEnemyWhite = this.getNeighborsEnemy(tokenWhite[moveWhite][0]);
            if (neighborsEnemyWhite.length > 0) {
                moveWhitePoss.push(["C", tokenWhite[moveWhite][0], this.getNeighborsEnemy(tokenWhite[moveWhite][0])]);
            }
        }
        if (moveWhitePoss.length < 1) {
            for (moveWhite = 0; moveWhite < tokenWhite.length; moveWhite++) {
                if (this.getLeft(tokenWhite[moveWhite][0]) != "-1") {
                    moveWhitePoss.push(["D", tokenWhite[moveWhite][0], this.getLeft(tokenWhite[moveWhite][0])]);
                }
                if (this.getRight(tokenWhite[moveWhite][0]) != "-1") {
                    moveWhitePoss.push(["D", tokenWhite[moveWhite][0], this.getRight(tokenWhite[moveWhite][0])]);
                }
                if (this.getForward(tokenWhite[moveWhite][0]) != "-1") {
                    moveWhitePoss.push(["D", tokenWhite[moveWhite][0], this.getForward(tokenWhite[moveWhite][0])]);
                }
            }
        }
        for (var moveBlack = 0; moveBlack < tokenBlack.length; moveBlack++) {
            var neighborsEnemyBlack = this.getNeighborsEnemy(tokenBlack[moveBlack][0]);
            if (neighborsEnemyBlack.length > 0) {
                moveBlackPoss.push(["C", tokenBlack[moveBlack][0], this.getNeighborsEnemy(tokenBlack[moveBlack][0])]);
            }
        }
        if (moveBlackPoss.length < 1) {
            for (moveBlack = 0; moveBlack < tokenBlack.length; moveBlack++) {
                if (this.getLeft(tokenBlack[moveBlack][0]) != "-1") {
                    moveBlackPoss.push(["D", tokenBlack[moveBlack][0], this.getLeft(tokenBlack[moveBlack][0])]);
                }
                if (this.getRight(tokenBlack[moveBlack][0]) != "-1") {
                    moveBlackPoss.push(["D", tokenBlack[moveBlack][0], this.getRight(tokenBlack[moveBlack][0])]);
                }
                if (this.getForward(tokenBlack[moveBlack][0]) != "-1") {
                    moveBlackPoss.push(["D", tokenBlack[moveBlack][0], this.getForward(tokenBlack[moveBlack][0])]);
                }
            }
        }
    };
    
    this.hasEnemy = function (pos,color){
        if(this.getColor(pos) != "0" && this.getColor(pos) != color){
            return true;
        }else{
            return false;
        }
    };

    this.nearestSingleEnemyPawn = function (pos,direction) {
        var p;
        var pNext;
        if(direction == "DOWN"){
            for(var i = 7 - pos[0];i<6;i++){
                p = i+1+""+pos[1];
                pNext = (i+2)+""+pos[1];
                if(this.hasEnemy(p,this.getColor(pos)) && this.getColor(pNext) == "0"){
                    return p;
                }
            }
        }
        if(direction == "UP"){
            for( i = pos[0] -1 ;i>0;i--){
                 p = (i)+""+pos[1];
                 pNext = (i-1)+""+pos[1];
                if(this.hasEnemy(p,this.getColor(pos)) && this.getColor(pNext) == "0"){
                    return p;
                }
            }
        }
        if(direction == "RIGHT"){
            for( i = 7 - pos[1];i<7;i++){
                 p = pos[0]+""+i;
                 pNext = pos[0]+""+(i+1);
                if(this.hasEnemy(p,this.getColor(pos)) && this.getColor(pNext) == "0"){
                    return p;
                }
            }
        }
        if(direction == "LEFT"){
            for( i = pos[1];i>1;i--){
                p = pos[0]+""+i;
                pNext = pos[0]+""+(i-1);
                if(this.hasEnemy(p,this.getColor(pos)) && this.getColor(pNext) == "0"){
                    return p;
                }
            }
        }
        return -1;
    };

    this.movePossQueen = function () {
        for (var moveWhite = 0; moveWhite < tokenWhite.length; moveWhite++) {
            var neighborsEnemyWhite = this.getNeighborsEnemy(tokenWhite[moveWhite][0]);
            if (neighborsEnemyWhite.length > 0) {
                moveWhite.push(["C", tokenWhite[moveWhite][0], this.getNeighborsEnemy(tokenWhite[moveWhite][0])]);
            }
        }
        if (moveWhite.length < 1) {
            for (moveWhite = 0; moveWhite < tokenWhite.length; moveWhite++) {
                if (this.getLeft(tokenWhite[moveWhite][0]) != "-1") {
                    moveWhite.push(["D", tokenWhite[moveWhite][0], this.getLeft(tokenWhite[moveWhite][0])]);
                }
                if (this.getRight(tokenWhite[moveWhite][0]) != "-1") {
                    moveWhite.push(["D", tokenWhite[moveWhite][0], this.getRight(tokenWhite[moveWhite][0])]);
                }
                if (this.getForward(tokenWhite[moveWhite][0]) != "-1") {
                    moveWhite.push(["D", tokenWhite[moveWhite][0], this.getForward(tokenWhite[moveWhite][0])]);
                }
            }
        }
        for (var moveBlack = 0; moveBlack < tokenBlack.length; moveBlack++) {
            var neighborsEnemyBlack = this.getNeighborsEnemy(tokenBlack[moveBlack][0]);
            if (neighborsEnemyBlack.length > 0) {
                moveBlack.push(["C", tokenBlack[moveBlack][0], this.getNeighborsEnemy(tokenBlack[moveBlack][0])]);
            }
        }
        if (moveBlack.length < 1) {
            for (moveBlack = 0; moveBlack < tokenBlack.length; moveBlack++) {
                if (this.getLeft(tokenBlack[moveBlack][0]) != "-1") {
                    moveBlack.push(["D", tokenBlack[moveBlack][0], this.getLeft(tokenBlack[moveBlack][0])]);
                }
                if (this.getRight(tokenBlack[moveBlack][0]) != "-1") {
                    moveBlack.push(["D", tokenBlack[moveBlack][0], this.getRight(tokenBlack[moveBlack][0])]);
                }
                if (this.getForward(tokenBlack[moveBlack][0]) != "-1") {
                    moveBlack.push(["D", tokenBlack[moveBlack][0], this.getForward(tokenBlack[moveBlack][0])]);
                }
            }
        }
    };

    this.captureVertical = function (posBegin, posEnd) {
        if (actualPlayer == "white") {
            for (var moveWhite = 0; moveWhite < moveWhitePoss.length; moveWhite++) {
                if (moveWhitePoss[moveWhite][1] == posBegin && moveWhitePoss[moveWhite][2] == posEnd) {
                    this.board[posBegin[0]][posBegin[1]] = 0;
                    this.board[(parseInt(posBegin[0]) + parseInt(posEnd[0])) / 2][posBegin[1]] = 0;
                    this.board[posEnd[0]][posEnd[1]] = 1;
                }
            }
        } else {
            for (var moveBlack = 0; moveBlack < moveBlackPoss.length; moveBlack++) {
                if (moveBlackPoss[moveBlack][1] == posBegin && moveBlackPoss[moveBlack][2] == posEnd) {
                    this.board[posBegin[0]][posBegin[1]] = 0;
                    this.board[(parseInt(posBegin[0]) + parseInt(posEnd[0])) / 2][posBegin[1]] = 0;
                    this.board[posEnd[0]][posEnd[1]] = 2;
                }
            }

        }
    };

    this.captureHorizontal = function (posBegin, posEnd) {
        if (actualPlayer == "white") {
            for (var moveWhite = 0; moveWhite < moveWhitePoss.length; moveWhite++) {
                if (moveWhitePoss[moveWhite][1] == posBegin && moveWhitePoss[moveWhite][2] == posEnd) {
                    this.board[posBegin[0]][posBegin[1]] = 0;
                    this.board[posBegin[0]][(parseInt(posBegin[1]) + parseInt(posEnd[1])) / 2] = 0;
                    this.board[posEnd[0]][posEnd[1]] = 1;
                }
            }
        } else {
            for (var moveBlack = 0; moveBlack < moveBlackPoss.length; moveBlack++) {
                if (moveBlackPoss[moveBlack][1] == posBegin && moveBlackPoss[moveBlack][2] == posEnd) {
                    this.board[posBegin[0]][posBegin[1]] = 0;
                    this.board[posBegin[0]][(parseInt(posBegin[1]) + parseInt(posEnd[1])) / 2] = 0;
                    this.board[posEnd[0]][posEnd[1]] = 2;
                }
            }

        }
    };

    this.move = function (posBegin, posEnd) {
        if (actualPlayer == "white") {
            for (var moveWhite = 0; moveWhite < moveWhitePoss.length; moveWhite++) {
                if (moveWhitePoss[moveWhite][1] == posBegin && moveWhitePoss[moveWhite][2] == posEnd) {
                    this.board[posBegin[0]][posBegin[1]] = 0;
                    this.board[posEnd[0]][posEnd[1]] = 1;
                }
            }
        } else {
            for (var moveBlack = 0; moveBlack < moveBlackPoss.length; moveBlack++) {
                if (moveBlackPoss[moveBlack][1] == posBegin && moveBlackPoss[moveBlack][2] == posEnd) {
                    this.board[posBegin[0]][posBegin[1]] = 0;
                    this.board[posEnd[0]][posEnd[1]] = 2;
                }
            }
        }
    };

    this.moveCapture = function (posBegin, posEnd) {
        if (this.getColor(posBegin) == "1" || this.getColor(posBegin) == "2") {
            this.moveCaptureToken(posBegin, posEnd);
        } else if (this.getColor(posBegin) == "3" || this.getColor(posBegin) == "4") {
            this.moveCaptureQueen(posBegin, posEnd);
        }
        this.becomeQueen();
    };

    this.moveCaptureToken = function (posBegin, posEnd) {
        if (actualPlayer == "white" && this.getColor(posBegin) == "1") {
            for (var moveWhite = 0; moveWhite < moveWhitePoss.length; moveWhite++) {
                if (moveWhitePoss[moveWhite][0] == "D") {
                    this.move(posBegin, posEnd);
                } else {
                    if (posBegin[0] != posEnd[0]) {
                        this.captureVertical(posBegin, posEnd);
                    } else {
                        this.captureHorizontal(posBegin, posEnd);
                    }
                }
            }
        } else if (actualPlayer == "black" && this.getColor(posBegin) == "2") {
            for (var moveBlack = 0; moveBlack < moveBlackPoss.length; moveBlack++) {
                if (moveBlackPoss[moveBlack][0] == "D") {
                    this.move(posBegin, posEnd);
                } else {
                    if (posBegin[0] != posEnd[0]) {
                        this.captureVertical(posBegin, posEnd);
                    } else {
                        this.captureHorizontal(posBegin, posEnd);
                    }
                }
            }
        }
    };

    this.moveCaptureQueen = function (posbegin,posEnd) {

    };

    this.becomeQueen = function () {
        if (actualPlayer == "white") {
            for (var column = 0; column < 8; column++) {
                if (this.board[7][column] == "1") {
                    this.board[7][column] = "3";
                }
            }
        } else {
            for (column = 0; column < 8; column++) {
                if (this.board [0][column] == "2") {
                    this.board [0][column] = "4";
                }
            }
        }
    };

    this.win = function () {
        if (this.tokenNumber("white") == "0") {
            return "white";
        } else if (this.tokenNumber("black") == "0") {
            return "black";
        } else {
            return "-1";
        }
    };
};
