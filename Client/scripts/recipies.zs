
// Osmium Variables
var osmium = <ore:ingotOsmium>.firstItem;
var osmiumOre = <ore:oreOsmium>.firstItem;
var osmiumDust = <ore:dustOsmium>.firstItem;

// Remove Osmium smelting and pyrotheum shit
furnace.remove(osmium, osmiumOre);
recipes.removeShapeless(osmium);
mods.immersiveengineering.Crusher.removeRecipesForInput(osmiumOre);

// Remove Hand-Crafted Gears
mods.unidict.removalByKind.get("Crafting").remove("gear");

// Remove UniDict Osmium Ore Smelting and ore + hammer -> dust
mods.unidict.removalByKind.get("Furnace").remove("osmium");
mods.unidict.removalByKind.get("Crafting").remove("oreOsmium");
mods.unidict.removalByKind.get("Crafting").remove("dust");

// Arc Furnace Tweaks
mods.immersiveengineering.ArcFurnace.removeRecipe(osmium);
mods.immersiveengineering.ArcFurnace.addRecipe(osmium * 2, <ore:oreOsmium>, <ore:itemSlag>.firstItem, 2000, 512, [<minecraft:chorus_fruit>], "Alloying");

// Induction Smelter Tweaks
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:865>, osmiumOre);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:866>, osmiumOre);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand:*>, osmiumOre);

mods.thermalexpansion.InductionSmelter.addRecipe(osmium * 2, osmiumOre, <minecraft:chorus_fruit>, 4000);

// Pulverizer Tweaks
mods.thermalexpansion.Pulverizer.removeRecipe(osmiumOre);

// Crusher Tweaks
mods.extrautils2.Crusher.remove(osmiumOre);

// Draconic Tweaks
var draconic_core = <draconicevolution:draconic_core>;
var draconium = <draconicevolution:draconium_ingot>;
var gold = <minecraft:gold_ingot>;
var red_crystal = <advancedrocketry:crystal:3>;

recipes.removeShaped(<draconicevolution:draconic_core>);

recipes.addShaped(draconic_core, 
[[draconium, gold, draconium]
,[gold, red_crystal, gold],
[draconium, gold, draconium]]);

