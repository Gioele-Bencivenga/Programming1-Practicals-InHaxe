class Main {
	static function main() {
		var examiner = new Examiner();
		var mark:Int = 0;

		do {
			trace("Insert a score 0 to 100");

			mark = Std.parseInt(Sys.stdin().readLine());
			examiner.isInputValid = true;

			if (mark == null) {
				examiner.isInputValid = false;
				trace("Not an integer");
			}

			examiner.EvaluateMark(mark);
		} while (examiner.isInputValid == false);

		trace('You were marked as ${examiner.classAndDivision}');
	}
}
