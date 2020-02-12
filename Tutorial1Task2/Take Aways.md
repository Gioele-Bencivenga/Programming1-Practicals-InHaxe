# Take Away points from this practical

## Function arguments

Functions can have default and/or optional arguments:

```Haxe
// Declare a function with one parameter which has a default value set
function sayHello(name:String = "Mark") {
  trace('Hello ${name}');
}

// Call it without any parameter and the 'default' one will be used
sayHello();

// Let's call it again with some parameter
sayHello("John");
from <https://code.haxe.org/category/beginner/declare-functions.html>
```

## Random Integers

In order to get a random integer between 0 and N:
Math.round(Math.random() * N)

## For Loops

For loops have a different syntax in haxe:

```Haxe
for (i in 0...10)
  trace(i); // prints numbers 0 to 9
```

Note that i++ is not called anywhere, the value of i already increments as the loop loops.

Also note that in min...max the min value is inclusive while the max is exclusive (hence why the above example doesn't reach 10).

## String Interpolation

from <https://haxe.org/manual/lf-string-interpolation.html>

With Haxe 3 it is no longer necessary to manually concatenate parts of a string due to the introduction of String Interpolation. Special identifiers, denoted by the dollar sign $ within a String enclosed by single-quote ' characters, are evaluated as if they were concatenated identifiers:

```Haxe
var x = 12;
// The value of x is 12
trace('The value of x is $x');
```

Furthermore, it is possible to include whole expressions in the string by using ${expr}, with expr being any valid Haxe expression:

```Haxe
var x = 12;
// The sum of 12 and 3 is 15
trace('The sum of $x and 3 is ${x + 3}');
```

String interpolation is a compile-time feature and has no impact on the runtime. The above example is equivalent to manual concatenation, which is exactly what the compiler generates:

```Haxe
trace("The sum of " + x + " and 3 is " + (x + 3)).
```
