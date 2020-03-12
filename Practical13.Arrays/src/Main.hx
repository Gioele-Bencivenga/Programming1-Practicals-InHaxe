class Main {
	static function main() {

		// we initialize the array with 15 0s
		var throwsOutcome:Array<Int> = [for (i in 0...15) 0];
	
		var numberOfThrows:Int = 100000;

		for (i in 0...numberOfThrows) {
			ThrowThreeDice(throwsOutcome);
		}

		var maxValue = throwsOutcome[0];
		var maxResult = 0;

		for (i in 0...throwsOutcome.length) {
			if (throwsOutcome[i] > maxValue) {
				maxValue = throwsOutcome[i];
				maxResult = i + 3;
			}
		}

		for (i in 0...throwsOutcome.length) {
			trace('The result ${(i + 3)} appeared ${throwsOutcome[i]} times.');
		}

		trace('The most likely outcome is $maxResult');
	}

	static public function ThrowThreeDice(throwsOutcome:Array<Int>) {
		var mergedOutcome:Int = 0;

		var die1 = new Die();
		var die2 = new Die();
		var die3 = new Die();

		die1.Roll(1, 6);
		die2.Roll(1, 6);
		die3.Roll(1, 6);

		mergedOutcome = die1.outcome + die2.outcome + die3.outcome;

		switch (mergedOutcome) {
			case 3:
				if (throwsOutcome[0] == null) {
					throwsOutcome[0] = 1;
				} else {
					throwsOutcome[0] += 1;
				}

			case 4:
				if (throwsOutcome[1] == null) {
					throwsOutcome[1] = 1;
				} else {
					throwsOutcome[1] += 1;
				}

			case 5:
				if (throwsOutcome[2] == null) {
					throwsOutcome[2] = 1;
				} else {
					throwsOutcome[2] += 1;
				}

			case 6:
				if (throwsOutcome[3] == null) {
					throwsOutcome[3] = 1;
				} else {
					throwsOutcome[3] += 1;
				}

			case 7:
				if (throwsOutcome[4] == null) {
					throwsOutcome[4] = 1;
				} else {
					throwsOutcome[4] += 1;
				}

			case 8:
				if (throwsOutcome[5] == null) {
					throwsOutcome[5] = 1;
				} else {
					throwsOutcome[5] += 1;
				}

			case 9:
				if (throwsOutcome[6] == null) {
					throwsOutcome[6] = 1;
				} else {
					throwsOutcome[6] += 1;
				}

			case 10:
				if (throwsOutcome[7] == null) {
					throwsOutcome[7] = 1;
				} else {
					throwsOutcome[7] += 1;
				}

			case 11:
				if (throwsOutcome[8] == null) {
					throwsOutcome[8] = 1;
				} else {
					throwsOutcome[8] += 1;
				}

			case 12:
				if (throwsOutcome[9] == null) {
					throwsOutcome[9] = 1;
				} else {
					throwsOutcome[9] += 1;
				}

			case 13:
				if (throwsOutcome[10] == null) {
					throwsOutcome[10] = 1;
				} else {
					throwsOutcome[10] += 1;
				}

			case 14:
				if (throwsOutcome[11] == null) {
					throwsOutcome[11] = 1;
				} else {
					throwsOutcome[11] += 1;
				}

			case 15:
				if (throwsOutcome[12] == null) {
					throwsOutcome[12] = 1;
				} else {
					throwsOutcome[12] += 1;
				}

			case 16:
				if (throwsOutcome[13] == null) {
					throwsOutcome[13] = 1;
				} else {
					throwsOutcome[13] += 1;
				}

			case 17:
				if (throwsOutcome[14] == null) {
					throwsOutcome[14] = 1;
				} else {
					throwsOutcome[14] += 1;
				}

			case 18:
				if (throwsOutcome[15] == null) {
					throwsOutcome[15] = 1;
				} else {
					throwsOutcome[15] += 1;
				}
		}
	}
}
