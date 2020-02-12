class Person {
	public var firstName:String = null;
	public var surname:String = null;
	public var birthYear:Int = null;
	public var age:Int = null;
	
	private var currentYear:Int = Date.now().getFullYear();

	public function new() {
		trace(Type.getClassName(Type.getClass(this)) + " instance created");
	}

	public function CalculateAge():Int {
		age = currentYear - birthYear;

		return age;
	}
}
