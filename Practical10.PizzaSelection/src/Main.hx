class Main {
	static function main() {
		var isInputOk:Bool = false;

		var deliveryGuy = new DeliveryGuy();

		var item1 = new MenuItem(1, "Cheese & Tomato", 6);
		var item2 = new MenuItem(2, "Pepperoni & Mozzarella", 8.5);
		var item3 = new MenuItem(3, "Bacon & Cheese", 9.25);
		var item4 = new MenuItem(4, "Chicken & Mushroom", 9);
		var item5 = new MenuItem(5, "Pineapple & Ham", 7.25);

		// MILES INPUT LOOP
		while (isInputOk == false) {
			trace("Enter the number of miles our delivery guy will need to drive for");
			deliveryGuy.miles = Std.parseInt(Sys.stdin().readLine());

			if (deliveryGuy.miles > 6) {
				trace("Sorry but your location is too far away");
			} else if (deliveryGuy.miles < 0) {
				trace("Please insert a valid and whole number");
			} else if (deliveryGuy.miles != null) {
				isInputOk = true;
			}
		}

		// DELIVERY CHARGE DISPLAY
		deliveryGuy.CalculateCharge();
		trace('You will be charged £${deliveryGuy.charge} for the delivery');

		// flag reset since we'll be using it in the next loop
		isInputOk = false;

		// MENU SELECTION LOOP
		while (isInputOk == false) {
			trace("\nHere is our MENU");
			item1.Display();
			item2.Display();
			item3.Display();
			item4.Display();
			item5.Display();
			trace("Enter the item number to select it");
			deliveryGuy.userChoice = Std.parseInt(Sys.stdin().readLine());
			if (deliveryGuy.userChoice > 5 || deliveryGuy.userChoice < 1) {
				isInputOk = false;
				trace('Only enter a number from 1 to 5');
			} else if (deliveryGuy.userChoice == null) {
				isInputOk = false;
				trace("Enter a valid number");
			} else {
				isInputOk = true;
			}
		}

		switch (deliveryGuy.userChoice) {
			case 1:
				deliveryGuy.AddCharge(item1);
				deliveryGuy.DisplayBill(item1);
			case 2:
				deliveryGuy.AddCharge(item2);
				deliveryGuy.DisplayBill(item2);
			case 3:
				deliveryGuy.AddCharge(item3);
				deliveryGuy.DisplayBill(item3);
			case 4:
				deliveryGuy.AddCharge(item4);
				deliveryGuy.DisplayBill(item4);
			case 5:
				deliveryGuy.AddCharge(item5);
				deliveryGuy.DisplayBill(item5);
		}
	}
}
