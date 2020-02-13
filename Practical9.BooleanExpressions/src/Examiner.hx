class Examiner {
	public var isInputValid:Bool;
	public var classAndDivision:String;

	public function new() {
		isInputValid = false;
        classAndDivision = null;
        
        trace('${Type.getClassName(Type.getClass(this))} instance created');
	}

	public function EvaluateMark(passedMark:Int) {
		if (passedMark < 0) {
			isInputValid = false;
			trace("The score submitted seems to be less than 0, please check your input.");
		} else if (passedMark <= 39 && passedMark >= 0) {
			classAndDivision = "Fail";
		} else if (passedMark >= 40 && passedMark <= 49) {
			classAndDivision = "Third class";
		} else if (passedMark >= 50 && passedMark <= 59) {
			classAndDivision = "Second class, division 2";
		} else if (passedMark >= 60 && passedMark <= 69) {
			classAndDivision = "Second class, division 1";
		} else if (passedMark >= 70 && passedMark <= 100) {
			classAndDivision = "First class";
		} else if (passedMark > 100) {
			isInputValid = false;
			trace("The score submitted seems to be greater than 100, please check your input.");
		}
	}
}
