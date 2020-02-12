// Player class following D&D-like rules for statistics and rules
class Player {
	public var health:Int;
	public var attackBonus:Int;
	public var armourClass:Int;
	public var attackRoll:Int;
	public var damage:Int;
	public var name:String;
	public var damageMultiplier:Int;

	public function new(_name:String = "Placeholder Name") {
		name = _name;
		health = 10 + RandomInt(10);
		attackBonus = 1 + RandomInt(6);
		armourClass = 10 + RandomInt(6);

		attackRoll = 0;
		damage = 0;
		damageMultiplier = 1;

		trace(Type.getClassName(Type.getClass(this)) + " instance has been created");
	}

	public function Attack() {
        // a D20 is rolled
        attackRoll = RandomInt(20);
        // if the roll is a critical hit
        if(attackRoll == 20 || attackRoll == 19){
            // the damage will be doubled
            damageMultiplier = 2;
            trace("Critical Hit!");
        }
        attackRoll += attackBonus;

        trace('$name attacks with a roll of $attackRoll');
    }

    public function DamageRoll():Int {
        damage = RandomInt(8);
        damage *= damageMultiplier;

        // we return the multiplier to 1 in case a critical hit raised it to 2
        damageMultiplier = 1;

        trace('$name hits for a damage of $damage');

        return damage;
    }

	// returns a random integer between 0 and _max
	private function RandomInt(_max:Int):Int {
		return Math.round(Math.random() * _max);
	}
}
