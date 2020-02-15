class Main {
	static function main() {
		var bob = new Bob();
		var auxVar = 0;

		#if (taskToRun == 1)
		for (i in bob.currentAge...bob.retirementAge) {
			if (bob.paidMortgage >= bob.totalDueMortgage) {
				auxVar = bob.startingSalary - bob.yearlyUtilitiesAmount;
			} else {
				auxVar = bob.startingSalary - bob.yearlyMortgageAmount - bob.yearlyUtilitiesAmount;

				bob.paidMortgage += bob.yearlyMortgageAmount;
			}

			bob.savings += auxVar;
			auxVar = 0;
			bob.currentAge++;

			bob.startingSalary += 300;
		}

		trace('Bob ends up at the age of ${bob.currentAge} with savings equal to ${bob.savings}');
		#elseif (taskToRun == 2)
		for (i in bob.currentAge...bob.retirementAge) {
			bob.TaxSalary(bob.startingSalary);

			if (bob.paidMortgage >= bob.totalDueMortgage) {
				auxVar = bob.taxedSalary - bob.yearlyUtilitiesAmount;
			} else {
				auxVar = bob.taxedSalary - bob.yearlyMortgageAmount - bob.yearlyUtilitiesAmount;

				bob.paidMortgage += bob.yearlyMortgageAmount;
			}

			bob.savings += auxVar;
			auxVar = 0;
			bob.currentAge++;

			bob.startingSalary += 300;
		}

		trace("Bob ends up at the age of " + bob.currentAge + " with savings equal to " + bob.savings);
		#end
	}
}
