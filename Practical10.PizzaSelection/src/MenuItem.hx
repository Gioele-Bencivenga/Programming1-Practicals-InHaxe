class MenuItem{
    public var listNumber:Int;
    public var itemPrice:Float;
    public var name:String;

    public function new(_listNumber:Int, _name:String, _itemPrice:Float) {
        listNumber = _listNumber;
        name = _name;
        itemPrice = _itemPrice;

        trace('${Type.getClassName(Type.getClass(this))} instance created');
    }

    public function Display() {
        trace('$listNumber. $name, £$itemPrice');
    }
}