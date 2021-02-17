class Person {
	public var firstName:String;
	public var surname:String;
	public var birthYear:Int;
	public var age:Int;
	
	private var currentYear:Int = Date.now().getFullYear();

	public function new() {
		trace(Type.getClassName(Type.getClass(this)) + " instance created");
	}

	public function CalculateAge():Int {
		age = currentYear - birthYear;

		return age;
	}
}
