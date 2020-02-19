class Die {
	public var outcome:Int;

	public function new() {
		outcome = 0;
	}

	public function Roll() {
		outcome = RandomInt(1, 6);
	}

	private function RandomInt(from:Int, to:Int):Int {
		return from + Math.floor(((to - from + 1) * Math.random()));
	}
}
