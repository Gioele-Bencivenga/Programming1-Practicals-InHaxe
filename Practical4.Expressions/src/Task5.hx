class Task5 extends Task{
    var randNumber:Int;
    public function new() {
        super();
    }

    public function Execute() {
        randNumber = Math.round(Math.random() * 100);

        trace("A random number between 0 and 100: " + randNumber);
    }
}