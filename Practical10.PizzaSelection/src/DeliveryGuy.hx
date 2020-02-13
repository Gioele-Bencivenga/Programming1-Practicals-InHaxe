class DeliveryGuy {
	// charge based on distance
	var charge:Float;
	// item price + delivery charge
	var deliveryPrice:Float;
	// distance used to calculate charge
	var miles:Int;

	public var userChoice:Int;

	public function new() {
		charge = 0;
		deliveryPrice = 0;
		miles = 0;
		userChoice = 0;

		trace('${Type.getClassName(Type.getClass(this))} instance created');
	}

	public function CalculateCharge() {
		if (miles >= 0 && miles <= 1) {
			charge = 0.00;
		} else if (miles > 1 && miles <= 3) {
			charge = 3.00;
		} else if (miles > 3 && miles <= 6) {
			charge = 6.00;
		}
    }
    
    public function AddCharge(item:MenuItem) {
        deliveryPrice = item.itemPrice + charge;
    }

    public function DisplayBill(item:MenuItem) {
        trace('\nBILL SUMMARY:\n${item.name}, £${item.itemPrice}\nDelivery charge, £$charge\nTotal, £$deliveryPrice');
    }
}
