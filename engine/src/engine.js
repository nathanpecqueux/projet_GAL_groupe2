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

var Engine = function () {
    //var board = new Array(8);
    var actualPlayer;
    var tokenWhite = [];
    var tokenBlack = [];
    var moveWhitePoss = [];
    var moveBlackPoss = [];

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

    /*this.printBoard = function () {
     for (var line = 0; line < 8; line++) {
     console.log(this.board[line]);
     }
     console.log("");
     };*/

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
            if (this.getColor(line + (parseInt(col) - 1)) == 2 || this.getColor(line + (parseInt(col) - 1)) == 4){
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
            if (this.getColor(line + (parseInt(col) - 1)) == 1 || this.getColor(line + (parseInt(col) - 1)) == 3){
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
            if (actualPlayer == "white") {
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
            } else {
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


    }
};
