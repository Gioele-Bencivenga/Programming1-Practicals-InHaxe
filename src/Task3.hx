class Task3 extends Task{
    var a:Int = -2;
    var b:Float = 4.2;

    public function new() {
		super();
	}

	public function Execute() {
        trace("The absolute value of a is: " + Math.abs(a)); 
        trace("The absolute value of b is: " + Math.abs(b)); 
    }
}