class Task1 extends Task {
	private var x:Int = 10;
	private var y:Int = 5;
	private var x1:Float = 5.7;
	private var y1:Float = 10.3;

	// constructor
	public function new() {
		super();
	}

	public function Execute() {
		trace("Sum between 2 Ints: " + (x + y));

		trace("Sum between 2 Floats: " + (x1 + y1));

		trace("Sum between an Int and a Float: " + (x + x1));
	}
}
