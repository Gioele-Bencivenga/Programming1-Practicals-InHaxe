# Take Away points from this practical

## Method Overloading

Haxe doesn't have method overloading it seems. Or if it has it I haven't found the way to do it.
So instead of 2 constructors I made a constructor with default values, this way we retain the functionality of being able to instantiate both specifying the values as well as just using default ones.

## Typecasting

Haxe has no typecasting so (int) floatVariable wont work.
Instead, you'll have to use one of the methods found in this page <https://code.haxe.org/category/beginner/numbers-floats-ints.html>
