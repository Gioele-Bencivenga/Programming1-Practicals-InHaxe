class Main {
	static function main() {
		var die1 = new Die();
		var die2 = new Die();
		var die3 = new Die();

		var singleExperiments:Int = 10000000;
		var pairExperiments:Int = 10000000;
		var sixesCount:Int = 0;
		var doubleSixesCount:Int = 0;

		for (i in 0...singleExperiments) {
			die1.Roll();

			if (die1.outcome == 6) {
				sixesCount++;
			}
		}
		trace("In " + singleExperiments + " throws of a single die " + sixesCount + " were sixes.");

		var probability:Float = sixesCount / singleExperiments;
		trace('Therefore, the probability of a 6 in a single throw of a die is $probability (or ${(probability * 100.0)}%).');

		for (i in 0...pairExperiments) {
			die2.Roll();
			die3.Roll();

			if (die2.outcome == 6 && die3.outcome == 6) {
				doubleSixesCount++;
			}
		}
		trace('In $pairExperiments throws of two dice $doubleSixesCount were double sixes.');

		var doubleProbability:Float = doubleSixesCount / pairExperiments;
		trace('Therefore, the probability of a double 6 in a single throw of two dice is $doubleProbability (or ${doubleProbability * 100.0}%).');
	}
}
