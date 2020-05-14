class Task4 extends Task {
	var floatValue:Float = 25.6;
	var floatValue2:Float = 53.78;

	public function new() {
		super();
	}

	public function Execute() {
		var numOfRuns = 100000;
		var duration:Float = 0;

		for (i in 0...numOfRuns) {
			var startTime = Sys.time();

			var floorVal = Math.floor(floatValue);
			var roundVal = Math.round(floatValue);
			var largestVal = Math.max(floatValue, floatValue2);
			var smallestVal = Math.min(floatValue, floatValue2);
			var randVal = Math.random();
			var squareVal = Math.sqrt(floatValue2);

			/*
			trace('The floored value of $floatValue is $floorVal\n
			The rounded value of $floatValue is $roundVal\n
			The largest number between $floatValue and $floatValue2 is $largestVal\n
			The smallest number between $floatValue and $floatValue2 is $smallestVal\n
			"A random number between 0 and 1 is $randVal\n
			The square root of $floatValue2 is $squareVal\n
			');
			*/

			var endTime = Sys.time();
			duration += endTime - startTime;
		}

		var avgDuration = duration / numOfRuns;
		var avgDurationNano = avgDuration * 1000000000;

		trace("The program was run " + numOfRuns + " times.\nAverage nanoseconds to run program: " + avgDurationNano);
	}
}
