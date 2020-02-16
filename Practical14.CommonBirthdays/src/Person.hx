class Person{
    public var birthday:Int;

    public function new() {
        AssignBirthday();
    }

    private function AssignBirthday() {
        birthday = RandomInt(1, 365);
        //trace('${Type.getClassName(Type.getClass(this))} had its birthday assigned to the $birthday day');
    }

    private function RandomInt(from:Int, to:Int):Int {
		return from + Math.floor(((to - from + 1) * Math.random()));
	}
}