class Task4 extends Task{
    var floatValue:Float = 25.6;
    var floatValue2:Float = 53.78;

    public function new() {
        super();
    }

    public function Execute() {
        trace("The closest int value to the variable is " + Math.floor(floatValue));
    }
}