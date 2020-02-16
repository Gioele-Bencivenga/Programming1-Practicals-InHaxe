# Take Away points from this practical

## Arrays

Arrays are slighly different in haxe but fundamentally the same, here they are explained in the cookbook:
<https://code.haxe.org/category/beginner/arrays.html>

When incrementing the number of times an outcome has appeared (line 30 class Die) a problem occurred.
My array at its start contained all null values and the compiler was complaining it couldn't do null + 1, so now the program checks if the value is still null and if so it gets initialized to 1, alternatively it gets incremented.
