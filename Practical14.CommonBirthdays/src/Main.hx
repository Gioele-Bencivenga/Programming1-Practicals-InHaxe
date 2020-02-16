class Main {
	static function main() {
		// number of times we want to run the simulation for
		var numberOfExperiments = 10000;

		var counter = 0;
		var pairsCount = 0;

		for (i in 0...numberOfExperiments) {
			// declaring the array of 40 people
			var classOfPeople = [for (i in 0...40) new Person()];

			for (i in 0...classOfPeople.length) {
				for (v in i + 1...classOfPeople.length) {
					if (classOfPeople[i].birthday == classOfPeople[v].birthday) {
						pairsCount++;
					}
				}
			}

			if (pairsCount >= 1) {
				counter++;
				pairsCount = 0;
			}
		}

		var probability:Float = counter / numberOfExperiments;
		trace("Probability: " + probability + "\nOr " + (probability * 100.0) + " per cent");
	}
}
