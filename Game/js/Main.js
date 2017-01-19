function main() {
	GAME.MANAGER.__init();
	GAME.MANAGER.run();
}

var run = document.querySelector("#run");
run.addEventListener("click", main, false);
