class Task4 extends Task {
	var floatValue:Float = 25.6;
	var floatValue2:Float = 53.78;

	public function new() {
		super();
	}

	public function Execute() {
		trace("The floored value of " + floatValue + " is " + Math.floor(floatValue));

		trace("The rounded value of " + floatValue + " is " + Math.round(floatValue));

		trace("The largest number between " + floatValue + " and " + floatValue2 + " is " + Math.max(floatValue, floatValue2));

		trace("The smallest number between " + floatValue + " and " + floatValue2 + " is " + Math.min(floatValue, floatValue2));

		trace("A random number between 0 and 1 is " + Math.random());

		trace("The square root of " + floatValue2 + " is " + Math.sqrt(floatValue2));
	}
}
