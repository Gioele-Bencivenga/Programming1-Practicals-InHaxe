class Task1 extends Task {
	// constructor
	public function new() {
		super();
	}

	public function Execute() {
		var numOfRuns = 100000;
		var duration:Float = 0;

		for (i in 0...numOfRuns) {
			var startTime = Sys.time();

			var x:Int = 10;
			var y:Int = 5;
			var x1:Float = 5.7;
			var y1:Float = 10.3;

			trace('Sum between Ints $x and $y: ${x + y}');

			trace('Sum between Floats $x1 and $y1: ${x1 + y1}');

			trace('Sum between Int $x and Float $x1: ${x + x1}');

			var endTime = Sys.time();
			duration += endTime - startTime;
		}

		var avgDuration = duration / numOfRuns;
		var avgDurationNano = avgDuration * 1000000000;

		trace("The program was run " + numOfRuns + " times.\nAverage nanoseconds to run program: " + avgDurationNano);
	}
}
