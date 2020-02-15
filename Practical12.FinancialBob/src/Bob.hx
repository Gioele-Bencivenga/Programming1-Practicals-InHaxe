class Bob {
	public var currentAge:Int;
	public var retirementAge:Int;
	public var startingSalary:Int;
	public var yearlySalaryIncreaseRate:Int; // salary increases at the end of every year
	public var monthlyMortgageAmount:Int;
	public var paidMortgage:Int;
	public var totalDueMortgage:Int;
	public var yearlyMortgageAmount:Int;
	public var monthlyUtilitiesAmount:Int;
	public var yearlyUtilitiesAmount:Int;
	public var savings:Int;
	public var taxedSalary:Int;

	public function new(_age:Int = 22, _retirementAge:Int = 65, _startingSalary:Int = 26000, _salaryIncreaseRate:Int = 300, _mortgageMonthlyAmount:Int = 900,
			_paidMortgage:Int = 0, _totalDueMortgage:Int = 432000, _utilitiesMonthlyCost:Int = 750, _savings:Int = 0, _taxedSalary:Int = 0) {
		currentAge = _age;
		retirementAge = _retirementAge;
		startingSalary = _startingSalary;
		yearlySalaryIncreaseRate = _salaryIncreaseRate;
		monthlyMortgageAmount = _mortgageMonthlyAmount;
		paidMortgage = _paidMortgage;
		totalDueMortgage = _totalDueMortgage;
		monthlyUtilitiesAmount = _utilitiesMonthlyCost;
		savings = _savings;
		taxedSalary = _taxedSalary;
		yearlyMortgageAmount = monthlyMortgageAmount * 12;
		yearlyUtilitiesAmount = monthlyUtilitiesAmount * 12;
	}

	// only used in task2
	public function TaxSalary(_salary) {
		if (_salary <= 35000) {
			// we tax the first 35000 at 20%
			_salary = _salary - Std.int(_salary * 20 / 100);
		} else if (_salary > 35000) {
			var remainderSalary:Int = _salary - 35000;

			// we tax the remainder salary at 40%
			remainderSalary = remainderSalary - Std.int(remainderSalary * (40 / 100));
			_salary += remainderSalary;
		}

		taxedSalary = _salary;
	}
}
