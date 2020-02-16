class Die {
	public var outcome:Int;

	public function new() {
		//trace('${Type.getClassName(Type.getClass(this))} instance created');
	}

	public function Roll(from:Int, to:Int) {
		outcome = from + Math.floor(((to - from + 1) * Math.random()));
	}
}
