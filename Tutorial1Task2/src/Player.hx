class Player {

var health:Int;
var attackBonus:Int;
var armourClass:Int;
var attackRoll:Int;
var damage:Int;
var name:String;
var damageMultiplier:Int;

    public function new(_name:String = "Placeholder Name") {
        trace(Type.getClassName(Type.getClass(this)) + " instance has been created");
        
        name = _name;
        health = 10 + Math.round(Math.random() * 10);

    }
}
