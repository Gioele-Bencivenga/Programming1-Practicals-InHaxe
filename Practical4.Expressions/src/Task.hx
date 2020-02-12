class Task {
	function new() {
		var className = Type.getClassName(Type.getClass(this));
		trace(className + " instance created.");
	}
}
