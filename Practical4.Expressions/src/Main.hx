class Main {
	static function main() {
		#if (task == 1)
		var task1 = new Task1();
		task1.Execute();
		#elseif (task == 2)
		var task2 = new Task2();
		task2.Execute();
		#elseif(task == 3)
		var task3 = new Task3();
		task3.Execute();
		#elseif(task == 4)
		var task4 = new Task4();
		task4.Execute();
		#elseif(task == 5)
		var task5 = new Task5();
		task5.Execute();
		#elseif(task == 0)
		var task1 = new Task1();
		var task2 = new Task2();
		var task3 = new Task3();
		var task4 = new Task4();
		var task5 = new Task5();
		task1.Execute();
		task2.Execute();
		task3.Execute();
		task4.Execute();
		task5.Execute();
		#end
	}
}
