import sys.thread.Thread;

class Player {
	public var currentScore:Int;
	public var firstDieRoll:Int;
	public var secondDieRoll:Int;
	public var thirdDieRoll:Int;

	public var numberOfDice:Int;

	// true to roll, false to hold
	public var action:Bool;
	public var tempAction:String;

	public function new() {
		currentScore = 0;
		firstDieRoll = 0;
		secondDieRoll = 0;
		thirdDieRoll = 0;
	}

	public function RollDice() {
		if (numberOfDice == 2) {
			firstDieRoll = RandomInt(1, 6);
			secondDieRoll = RandomInt(1, 6);
		} else if (numberOfDice == 3) {
			firstDieRoll = RandomInt(1, 6);
			secondDieRoll = RandomInt(1, 6);
			thirdDieRoll = RandomInt(1, 6);
		}

		// I'm not proud of this code I should have done an array and sorted it or a separate method MergeDice()
		if (numberOfDice == 2) {
			// checks which roll is greater and uses it as the tens, then uses the lesser one as the units
			if (firstDieRoll < secondDieRoll) {
				currentScore = (secondDieRoll * 10) + firstDieRoll;
			} else if (firstDieRoll >= secondDieRoll) {
				currentScore = (firstDieRoll * 10) + secondDieRoll;
			}
		} else if (numberOfDice == 3) {
			if (firstDieRoll >= secondDieRoll && firstDieRoll >= thirdDieRoll) {
				if (secondDieRoll >= thirdDieRoll) {
					currentScore = (firstDieRoll * 100) + (secondDieRoll * 10) + thirdDieRoll;
				} else if (thirdDieRoll >= secondDieRoll) {
					currentScore = (firstDieRoll * 100) + (thirdDieRoll * 10) + secondDieRoll;
				}
			} else if (secondDieRoll >= firstDieRoll && secondDieRoll >= thirdDieRoll) {
				if (firstDieRoll >= thirdDieRoll) {
					currentScore = (secondDieRoll * 100) + (firstDieRoll * 10) + thirdDieRoll;
				} else if (thirdDieRoll >= firstDieRoll) {
					currentScore = (secondDieRoll * 100) + (thirdDieRoll * 10) + firstDieRoll;
				}
			} else if (thirdDieRoll >= firstDieRoll && thirdDieRoll >= secondDieRoll) {
				if (secondDieRoll >= firstDieRoll) {
					currentScore = (thirdDieRoll * 100) + (secondDieRoll * 10) + firstDieRoll;
				} else if (firstDieRoll >= secondDieRoll) {
					currentScore = (thirdDieRoll * 100) + (firstDieRoll * 10) + secondDieRoll;
				}
			}
		}
	}

	// this is for computer use only
	public function DecideCourseOfAction(playerScore:Int, myScore:Int) {
		if (numberOfDice == 2) {
			// if the player is winning (or the computer is doing very badly) the computer rolls
			if (playerScore >= myScore || myScore <= 40) {
				action = true;
			} else if (playerScore < myScore) {
				// if the computer is winning it holds
				action = false;
			}
		}
		if (numberOfDice == 3) {
			// if the player is winning (or the computer is doing very badly) the computer rolls
			if (playerScore >= myScore || myScore <= 400) {
				action = true;
			} else if (playerScore < myScore) {
				// if the computer is winning it holds
				action = false;
			}
		}
	}

	private function RandomInt(from:Int, to:Int):Int {
		return from + Math.floor(((to - from + 1) * Math.random()));
	}
}
