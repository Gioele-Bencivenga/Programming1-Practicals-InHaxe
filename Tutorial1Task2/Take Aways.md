# Take Away points from this practical

## Functions

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
