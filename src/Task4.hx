class Task4{
    var floatValue:Float = 25.6;
    var floatValue2:Float = 53.78;

    public function new() {
        trace("Task 4 instance created");
    }

    public function Execute() {
        trace("The closest int value to the variable is " + Math.floor(floatValue));
    }
}