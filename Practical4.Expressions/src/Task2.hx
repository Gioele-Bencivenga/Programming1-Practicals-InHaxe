class Task2 extends Task{
	var a:Int = 2;
	var b:Int = 4;

	var c:Float = 2.0;
	var d:Float = 4.0;

	public function new() {
		super();
	}

	public function Execute() {
		trace("a divided by b = " + (a / b)); // division between two ints, the compiler recognizes the result should be float. Doesn't even let you put the result in an int variable yourself
		trace("c divided by d = " + (c / d)); // division between 2 floats is no problem
		trace("a divided by d = " + (a / d)); // division between int and float treated as a float
		trace("c divided by b = " + (c / b)); // as above
	}
}
