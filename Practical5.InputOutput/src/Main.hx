import haxe.macro.Expr.Catch;

class Main {
	static function main() {
		var isInputOk:Bool = false;
		var tempYear:String = null;

		var person = new Person();

		trace("Enter your first name");
		try {
			person.firstName = Sys.stdin().readLine();
		} catch (e:Any) {
			trace("And exception occurred, here it is: " + e);
		}

		trace("Enter your surname");
		try {
			person.surname = Sys.stdin().readLine();
		} catch (e:Any) {
			trace("And exception occurred, here it is: " + e);
		}

		while (isInputOk == false) {
			trace("Enter your year of birth");
			tempYear = Sys.stdin().readLine();

			if (Std.parseInt(tempYear) == null) {
				trace("Only insert numbers please");
			} else {
				if (tempYear.length == 4) {
					person.birthYear = Std.parseInt(tempYear);
					isInputOk = true;
				} else {
					trace("Insert a 4 digit number (e.g. 1990)");
				}
			}
		}

		person.CalculateAge();

		trace("You are " + person.firstName + " " + person.surname + " and you are " + person.age + " years old.");
	}
}
