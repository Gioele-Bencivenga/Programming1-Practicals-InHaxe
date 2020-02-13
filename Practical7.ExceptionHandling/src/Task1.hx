class Task1 extends Task {
    var operand:Int;
    var operand2:Int;
    var result:Float;

    public function new() {
        super();

        operand = 0;
        operand2 = 10000;
        result = 0;
    }

    public function Execute() {
        result = operand2/operand;
        trace(result);
    }
}