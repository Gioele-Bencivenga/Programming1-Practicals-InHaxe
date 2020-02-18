class Main {
	static function main() {
		var player1 = new Player();
		var computer1 = new Player();

		var isPlayerTurn:Bool = true;
		var turn:Int = 1;

		while (player1.numberOfDice != -100) // little easter egg
		{
			player1.numberOfDice = 0;

			trace("Would you like to play with 2 or 3 dice?");

			player1.numberOfDice = Std.parseInt(Sys.stdin().readLine());

			if (player1.numberOfDice == 2) {
				break;
			} else if (player1.numberOfDice == 3) {
				break;
			} else {
				trace("Only 2 or 3 are allowed as answers");
			}
		}

		computer1.numberOfDice = player1.numberOfDice;

		while (turn <= 10) {
			if (turn == 10) {
				trace("\nLAST TURN!");
			} else if (turn == 1) {
				trace("\nFIRST TURN!");
			} else {
				trace("\nTURN " + turn);
			}

			// waits for the player to correctly input an action
			while (isPlayerTurn == true) {
				trace("Press 'R' to roll the dice or 'H' to hold your score");
				try {
					player1.tempAction = Sys.stdin().readLine();
					player1.tempAction = player1.tempAction.toUpperCase();
					if (player1.tempAction.charAt(0) == 'R') {
						player1.action = true;
					} else if (player1.tempAction.charAt(0) == 'H') {
						player1.action = false;
					} else {
						trace('Only R or H are allowed as answers');
					}
				}

				if (player1.action == true) {
					player1.RollDice();
					// switches the turn to the computer after a succesfull roll
					isPlayerTurn = false;
				} else if (player1.action == false) {
					isPlayerTurn = false;
				}
			}

			// outcome of the player's turn
			if (player1.numberOfDice == 2) {
				if (player1.action == true) {
					trace("The Player rolled " + player1.firstDieRoll + " and " + player1.secondDieRoll);
				} else if (player1.action == false) {
					trace("Player holds");
				}
			} else if (player1.numberOfDice == 3) {
				if (player1.action == true) {
					trace("The Player rolled " + player1.firstDieRoll + " and " + player1.secondDieRoll + " and " + player1.thirdDieRoll);
				} else if (player1.action == false) {
					trace("Player holds");
				}
			}

			// runs the computer's turn
			while (isPlayerTurn == false) {
				computer1.DecideCourseOfAction(player1.currentScore, computer1.currentScore);

				if (computer1.action == true) {
					computer1.RollDice();
					isPlayerTurn = true;
				} else if (computer1.action == false) {
					isPlayerTurn = true;
				} else {
					trace("Oh wow the computer is doing something unexpected. This is strange.");
				}
			}

			// outcome of the computer's turn
			if (player1.numberOfDice == 2) {
				if (computer1.action == true) {
					trace("The Computer rolled " + computer1.firstDieRoll + " and " + computer1.secondDieRoll);
				} else if (computer1.action == false) {
					trace("Computer holds");
				}
			} else if (player1.numberOfDice == 3) {
				if (computer1.action == true) {
					trace("The Computer rolled " + computer1.firstDieRoll + " and " + computer1.secondDieRoll + " and " + computer1.thirdDieRoll);
				} else if (computer1.action == false) {
					trace("Computer holds");
				}
			}
			
			trace("\nSCORE: Player " + player1.currentScore + " Computer " + computer1.currentScore);

			turn++;
		}

		if (player1.currentScore > computer1.currentScore) {
			trace("The Player wins this match!");
		} else if (player1.currentScore < computer1.currentScore) {
			trace("The Computer wins this match!");
		} else if (player1.currentScore == computer1.currentScore) {
			trace("Oh my, what an unlikely course of events! This is a Draw!");
		}
	}
}
