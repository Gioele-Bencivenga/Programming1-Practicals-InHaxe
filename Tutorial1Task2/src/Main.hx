import haxe.macro.Expr.Catch;

class Main {
	static function main() {
		// attack counter for the player
		var nOfAttacks = 0;
		// attack counter for the enemy
		var enOfAttacks = 0;
		// flag for name input
		var isNameOk = false;

		var player = new Player();
		var enemy = new Player();

		// NAMING LOOP
		do {
			try {
				trace("Enter a name for your player");
				player.name = Sys.stdin().readLine().toUpperCase();
				StringTools.trim(player.name);

				trace("Enter a name for your enemy");
				enemy.name = Sys.stdin().readLine().toUpperCase();
				StringTools.trim(enemy.name);

				// we assign general names if none are inserted
				if (player.name.length == 0) {
					player.name = "GENERAL GOOD SPORT";
				}
				if (enemy.name.length == 0) {
					enemy.name = "EVIL BAD FELLOW";
				}

				if (player.name.length > 20 || enemy.name.length > 20) {
					trace("The name has to be shorter than 21 characters!");
				} else {
					isNameOk = true;
				}
			} catch (e:Any) {
				trace("An exception has occurred during the name selection");
			}
		} while (isNameOk == false);

		trace('Player Attributes:\nName: ${player.name}, Health: ${player.health}, Armour Class: ${player.armourClass}, Attack Bonus: ${player.attackBonus}');
		trace('Enemy Attributes:\nName: ${enemy.name}, Health: ${enemy.health}, Armour Class: ${enemy.armourClass}, Attack Bonus: ${enemy.attackBonus}');

		trace("Press ENTER when ready to continue to the combat");
		Sys.stdin().read(1);

		// COMBAT LOOP
		while (player.health >= 1 && enemy.health >= 1) {
			player.Attack();
			nOfAttacks++;

			if(player.attackRoll >= enemy.armourClass){
				enemy.health -= player.DamageRoll();

				trace('${enemy.name} has ${enemy.health} health left');
			}else{
				trace('${enemy.name} successfully defended from ${player.name}\'s attack');
			}

			// if the player's attack killed the enemy we break the loop
			// otherwise the enemy will attack while being dead
			if (enemy.health <= 0){
				break;
			}

			enemy.Attack();
			enOfAttacks++;

			if(enemy.attackRoll >= player.armourClass){
				player.health -= enemy.DamageRoll();

				trace('${player.name} has ${player.health} health left');
			}else{
				trace('${player.name} successfully defended from ${enemy.name}\'s attack');
			}
		}

		if(player.health > enemy.health){
			if(enemy.health <= -5){
				trace('${player.name} completely obliterated the enemy after $nOfAttacks attacks and with ${player.health} health left!');
			}else {
				trace('${player.name} defeated the enemy after $nOfAttacks attacks and with ${player.health} health left!');
			}
		}else{
			if(player.health <= -5){
				trace('${player.name} ended up dismembered after $enOfAttacks attacks from ${enemy.name}, who had ${enemy.health} health left');
			}else {
				trace('${player.name} was defeated after $enOfAttacks attacks from ${enemy.name}, who had ${enemy.health} health left');
			}
		}

	}
}
