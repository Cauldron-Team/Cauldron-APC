import mods.crossroads.Grindstone;
import crafttweaker.oredict.IOreDict;
import mods.crossroads.HeatingCrucible;
import mods.crossroads.FluidCoolingChamber;

import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import mods.tconstruct.Alloy;

Grindstone.removeRecipe(<ore:oreCopper>);
Grindstone.addRecipe(<ore:oreCopper>,<contenttweaker:material_part:12>);
Grindstone.addRecipe(<ore:ingotCopper>,<contenttweaker:material_part:12>); //this way, if you want to make molten copper via crossroads only you still can, but you can convert back to mystical if you have a crossroads setup.

FluidCoolingChamber.addRecipe(<contenttweaker:material_part:6>, <liquid:mystical_copper> * 144, 1000, 100);

HeatingCrucible.removeRecipe(oreDict.oreCopper);
HeatingCrucible.addRecipe(<contenttweaker:material_part:12>, <liquid:mystical_copper> * 144, "crossroads:blocks/ore_copper");

//remove mystical gears from normal copper and bronze
mods.tconstruct.Melting.removeRecipe(<liquid:copper>, <crossroads:gear_copper>);
mods.tconstruct.Melting.removeRecipe(<liquid:bronze>, <crossroads:gear_bronze>);
mods.tconstruct.Casting.removeTableRecipe(<crossroads:gear_copper>);
mods.tconstruct.Casting.removeTableRecipe(<crossroads:gear_bronze>);

mods.tconstruct.Melting.addRecipe(<liquid:mystical_copper> * 576, <crossroads:gear_copper>);
mods.tconstruct.Melting.addRecipe(<liquid:mystical_bronze> * 576, <crossroads:gear_bronze>);
mods.tconstruct.Casting.addTableRecipe(<crossroads:gear_copper>, <tconstruct:cast_custom:4>, <liquid:mystical_copper>, 576, false);
mods.tconstruct.Casting.addTableRecipe(<crossroads:gear_bronze>, <tconstruct:cast_custom:4>, <liquid:mystical_copper>, 576, false);

mods.tconstruct.Melting.addRecipe(<liquid:mystical_copper> * 144, <ore:ingotMysticalCopper>);
mods.tconstruct.Melting.addRecipe(<liquid:mystical_copper> * 1296, <contenttweaker:sub_block_holder_0:1>);
mods.tconstruct.Melting.addRecipe(<liquid:mystical_bronze> * 144, <ore:ingotMysticalBronze>);
mods.tconstruct.Melting.addRecipe(<liquid:mystical_bronze> * 1296, <contenttweaker:sub_block_holder_0:2>);

mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0:1>, null, <liquid:mystical_copper>, 1296);
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:sub_block_holder_0:2>, null, <liquid:mystical_bronze>, 1296);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:6>, <tconstruct:cast_custom:0>, <liquid:mystical_copper>, 144, false);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:15>, <tconstruct:cast_custom:0>, <liquid:mystical_bronze>, 144, false);

//add alloy to craft mystical bronze in smeltery
mods.tconstruct.Alloy.addRecipe(<liquid:mystical_bronze> * 4, [<liquid:tin> * 1, <liquid:mystical_copper> * 3]);

//change crafting recipes for gears to use mystical copper/bronze
recipes.removeShaped(<crossroads:gear_copper>);
recipes.removeShaped(<crossroads:gear_bronze>);
recipes.remove(<crossroads:large_gear_copper>);
recipes.remove(<crossroads:large_gear_bronze>);

recipes.addShaped(<crossroads:gear_copper>, [[null, <contenttweaker:material_part:14>, null],[<contenttweaker:material_part:14>, <contenttweaker:material_part:6>, <contenttweaker:material_part:14>], [null, <contenttweaker:material_part:14>, null]]);
recipes.addShaped(<crossroads:gear_bronze>, [[null, <contenttweaker:material_part:18>, null],[<contenttweaker:material_part:18>, <ore:ingotMysticalBronze>, <contenttweaker:material_part:18>], [null, <contenttweaker:material_part:18>, null]]);
recipes.addShaped(<crossroads:gear_copper> * 9, [[null, <contenttweaker:material_part:6>, null],[<contenttweaker:material_part:6>, <contenttweaker:sub_block_holder_0:1>, <contenttweaker:material_part:6>], [null, <contenttweaker:material_part:6>, null]]);
recipes.addShaped(<crossroads:gear_bronze> * 9, [[null, <ore:ingotMysticalBronze>, null],[<ore:ingotMysticalBronze>, <contenttweaker:sub_block_holder_0:2>, <ore:ingotMysticalBronze>], [null, <ore:ingotMysticalBronze>, null]]);
recipes.addShaped(<crossroads:large_gear_bronze>, [[<crossroads:gear_bronze>, <crossroads:gear_bronze>, <crossroads:gear_bronze>],[<crossroads:gear_bronze>, <contenttweaker:sub_block_holder_0:2>, <crossroads:gear_bronze>], [<crossroads:gear_bronze>, <crossroads:gear_bronze>, <crossroads:gear_bronze>]]);
recipes.addShaped(<crossroads:large_gear_copper>, [[<crossroads:gear_copper>, <crossroads:gear_copper>, <crossroads:gear_copper>],[<crossroads:gear_copper>, <contenttweaker:sub_block_holder_0:1>, <crossroads:gear_copper>], [<crossroads:gear_copper>, <crossroads:gear_copper>, <crossroads:gear_copper>]]);

//make the copper nuggets from native copper ore not part of oredict
val copperNug = <ore:nuggetCopper>;
copperNug.remove(<crossroads:nugget_copper>);
recipes.remove(<crossroads:nugget_copper>);

val mysticalCopperNugget = <ore:nuggetMysticalCopper>;
mysticalCopperNugget.add(<crossroads:nugget_copper>);

mods.tconstruct.Melting.removeRecipe(<liquid:copper>, <crossroads:nugget_copper>);
mods.tconstruct.Melting.addRecipe(<liquid:mystical_copper> * 16, <crossroads:nugget_copper>);
mods.tconstruct.Melting.addRecipe(<liquid:mystical_copper> * 16, <contenttweaker:material_part:14>);
mods.tconstruct.Melting.addRecipe(<liquid:mystical_bronze> * 16, <contenttweaker:material_part:18>);
mods.tconstruct.Casting.removeTableRecipe(<crossroads:nugget_copper>);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:18>, <tconstruct:cast_custom:1>, <liquid:mystical_copper>, 16, false);

recipes.addShapeless(<contenttweaker:material_part:14>, [<crossroads:nugget_copper>]);

//nuggets ->ingots
recipes.addShapeless(<contenttweaker:material_part:6>, [<ore:nuggetMysticalCopper>,<ore:nuggetMysticalCopper>,<ore:nuggetMysticalCopper>,<ore:nuggetMysticalCopper>,<ore:nuggetMysticalCopper>,<ore:nuggetMysticalCopper>,<ore:nuggetMysticalCopper>,<ore:nuggetMysticalCopper>,<ore:nuggetMysticalCopper>]);
recipes.addShapeless(<contenttweaker:material_part:15>, [<ore:nuggetMysticalBronze>,<ore:nuggetMysticalBronze>,<ore:nuggetMysticalBronze>,<ore:nuggetMysticalBronze>,<ore:nuggetMysticalBronze>,<ore:nuggetMysticalBronze>,<ore:nuggetMysticalBronze>,<ore:nuggetMysticalBronze>,<ore:nuggetMysticalBronze>]);
recipes.addShaped(<contenttweaker:material_part:15>, [[<ore:nuggetMysticalCopper>, <ore:nuggetMysticalCopper>, <ore:nuggetMysticalCopper>],[<ore:nuggetMysticalCopper>, <ore:nuggetTin>, <ore:nuggetMysticalCopper>], [<ore:nuggetMysticalCopper>, <ore:nuggetMysticalCopper>, <ore:nuggetMysticalCopper>]]);

//ingots -> nuggets
recipes.addShapeless(<contenttweaker:material_part:18> * 9, [<ore:ingotMysticalBronze>]);
recipes.addShapeless(<contenttweaker:material_part:14> * 9, [<ore:ingotMysticalCopper>]);

//blocks -> ingots
recipes.addShapeless(<contenttweaker:material_part:15> * 9, [<ore:blockMysticalBronze>]);
recipes.addShapeless(<contenttweaker:material_part:6> * 9, [<ore:blockMysticalCopper>]);

//ingots -> blocks
recipes.addShapeless(<contenttweaker:sub_block_holder_0:2>, [<ore:ingotMysticalCopper>,<ore:ingotMysticalCopper>,<ore:ingotMysticalCopper>,<ore:ingotMysticalCopper>,<ore:ingotMysticalCopper>,<ore:ingotMysticalCopper>,<ore:ingotMysticalCopper>,<ore:ingotMysticalCopper>,<ore:ingotMysticalCopper>]);

recipes.addShapeless(<contenttweaker:sub_block_holder_0:1>, [<ore:ingotMysticalBronze>,<ore:ingotMysticalBronze>,<ore:ingotMysticalBronze>,<ore:ingotMysticalBronze>,<ore:ingotMysticalBronze>,<ore:ingotMysticalBronze>,<ore:ingotMysticalBronze>,<ore:ingotMysticalBronze>,<ore:ingotMysticalBronze>]);
recipes.addShaped(<contenttweaker:sub_block_holder_0:1>, [[<ore:ingotMysticalBronze>, <ore:ingotMysticalBronze>, <ore:ingotMysticalBronze>],[<ore:ingotMysticalBronze>, <ore:ingotTin>, <ore:ingotMysticalBronze>], [<ore:ingotMysticalBronze>, <ore:ingotMysticalBronze>, <ore:ingotMysticalBronze>]]);

//mystical -> standard
recipes.addShapeless(<ic2:itemmisc:52>, [<ore:ingotMysticalBronze>]);
recipes.addShapeless(<ic2:itemmisc:50>, [<ore:ingotMysticalCopper>]);

//remove recipes and replace with mystical copper/bronze

recipes.remove(<crossroads:fluid_tube>);
recipes.remove(<crossroads:rotary_pump>);
recipes.remove(<crossroads:omnimeter>);
recipes.remove(<crossroads:multi_piston_sticky>);
recipes.remove(<crossroads:multi_piston>);
recipes.remove(<crossroads:water_centrifuge>);
recipes.remove(<crossroads:fluid_tank>);
recipes.remove(<crossroads:basic_fluid_splitter>);
recipes.remove(<crossroads:redstone_keyboard>);
recipes.remove(<crossroads:heating_chamber>);
recipes.remove(<crossroads:salt_reactor>);
recipes.remove(<crossroads:heat_exchanger>);
recipes.remove(<crossroads:heat_cable_copper_wool>);
recipes.remove(<crossroads:heat_cable_copper_slime>);
recipes.remove(<crossroads:heat_cable_copper_obsidian>);
recipes.remove(<crossroads:heat_cable_copper_ice>);
recipes.remove(<crossroads:heat_cable_copper_dirt>);
recipes.remove(<crossroads:heat_cable_copper_densus>);
recipes.remove(<crossroads:fluid_cooling_chamber>);
recipes.remove(<crossroads:steam_boiler>);
recipes.remove(<crossroads:fat_collector>);

recipes.addShaped(<crossroads:fluid_tube> * 8, [[<ore:ingotMysticalBronze>, <ore:ingotMysticalBronze>, <ore:ingotMysticalBronze>],[null, null, null], [<ore:ingotMysticalBronze>, <ore:ingotMysticalBronze>, <ore:ingotMysticalBronze>]]);
recipes.addShaped(<crossroads:rotary_pump>, [[<ore:ingotMysticalBronze>, <ore:stickIron>, <ore:ingotMysticalBronze>],[<ore:ingotMysticalBronze>, <crossroads:axle>, <ore:ingotMysticalBronze>], [<ore:blockGlassColorless>, <ore:stickIron>, <ore:blockGlassColorless>]]);
recipes.addShaped(<crossroads:omnimeter>, [[null, <ore:ingotMysticalBronze>, null],[<ore:ingotMysticalBronze>, <minecraft:compass>, <ore:ingotMysticalBronze>], [null, <ore:ingotMysticalBronze>, null]]);
recipes.addShaped(<crossroads:multi_piston_sticky>, [[<crossroads:multi_piston>, <ore:slimeball>, null],[null, null, null], [null, null, null]]);
recipes.addShaped(<crossroads:multi_piston_sticky>, [[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],[<ore:ingotMysticalBronze>, <minecraft:sticky_piston>, <ore:ingotMysticalBronze>], [<ore:ingotMysticalBronze>, <ore:ingotMysticalBronze>, <ore:ingotMysticalBronze>]]);
recipes.addShaped(<crossroads:multi_piston>, [[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],[<ore:ingotMysticalBronze>, <minecraft:piston>, <ore:ingotMysticalBronze>], [<ore:ingotMysticalBronze>, <ore:ingotMysticalBronze>, <ore:ingotMysticalBronze>]]);
recipes.addShaped(<crossroads:water_centrifuge>, [[<ore:ingotMysticalBronze>, <ore:stickIron>, <ore:ingotMysticalBronze>],[<crossroads:fluid_tube>, <ore:ingotTin>, <crossroads:fluid_tube>], [<ore:ingotMysticalBronze>, null, <ore:ingotMysticalBronze>]]);
recipes.addShapeless(<crossroads:fluid_tank>, [<crossroads:fluid_tank:*>]);
recipes.addShaped(<crossroads:fluid_tank>, [[null, <contenttweaker:material_part:15>, null],[<ore:ingotMysticalBronze>, <ore:ingotGold>, <ore:ingotMysticalBronze>], [null, <contenttweaker:material_part:15>, null]]);
recipes.addShaped(<crossroads:basic_fluid_splitter>, [[<ore:nuggetTin>, <crossroads:fluid_tube>, <ore:nuggetTin>],[<ore:ingotMysticalBronze>, <ore:ingotMysticalBronze>, <ore:ingotMysticalBronze>], [<ore:nuggetTin>, <crossroads:fluid_tube>, <ore:nuggetTin>]]);
recipes.addShaped(<crossroads:redstone_keyboard>, [[null, <minecraft:redstone>, null],[<minecraft:redstone>, <ore:ingotMysticalBronze>, <minecraft:redstone>], [null, <minecraft:redstone>, null]]);
recipes.addShaped(<crossroads:heating_chamber>, [[<ore:ingotIron>, <ore:ingotMysticalCopper>, <ore:ingotIron>],[<ore:ingotIron>, null, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
recipes.addShaped(<crossroads:salt_reactor>, [[<ore:ingotIron>, <crossroads:fluid_tube>, <ore:ingotIron>],[<crossroads:fluid_tube>, <ore:blockSalt>, <crossroads:fluid_tube>], [<ore:ingotIron>, <ore:ingotMysticalCopper>, <ore:ingotIron>]]);
recipes.addShaped(<crossroads:heat_exchanger>, [[<ore:barsIron>, <ore:ingotMysticalCopper>, <ore:barsIron>],[<ore:ingotMysticalCopper>, <ore:ingotMysticalCopper>, <ore:ingotMysticalCopper>], [<ore:barsIron>, <ore:barsIron>, <ore:barsIron>]]);
recipes.addShaped(<crossroads:heat_cable_copper_wool> * 4, [[<ore:wool>, <ore:wool>, <ore:wool>],[<ore:ingotMysticalCopper>, <ore:ingotMysticalCopper>, <ore:ingotMysticalCopper>], [<ore:wool>, <ore:wool>, <ore:wool>]]);
recipes.addShaped(<crossroads:heat_cable_copper_slime> * 4, [[<ore:slimeball>, <ore:slimeball>, <ore:slimeball>],[<ore:ingotMysticalCopper>, <ore:ingotMysticalCopper>, <ore:ingotMysticalCopper>], [<ore:slimeball>, <ore:slimeball>, <ore:slimeball>]]);
recipes.addShaped(<crossroads:heat_cable_copper_obsidian> * 4, [[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>],[<ore:ingotMysticalCopper>, <ore:ingotMysticalCopper>, <ore:ingotMysticalCopper>], [<ore:obsidian>, <ore:obsidian>, <ore:obsidian>]]);
recipes.addShaped(<crossroads:heat_cable_copper_ice> * 4, [[<minecraft:packed_ice>, <minecraft:packed_ice>, <minecraft:packed_ice>],[<ore:ingotMysticalCopper>, <ore:ingotMysticalCopper>, <ore:ingotMysticalCopper>], [<minecraft:packed_ice>, <minecraft:packed_ice>, <minecraft:packed_ice>]]);
recipes.addShaped(<crossroads:heat_cable_copper_dirt> * 4, [[<ore:dirt>, <ore:dirt>, <ore:dirt>],[<ore:ingotMysticalCopper>, <ore:ingotMysticalCopper>, <ore:ingotMysticalCopper>], [<ore:dirt>, <ore:dirt>, <ore:dirt>]]);
recipes.addShaped(<crossroads:heat_cable_copper_densus> * 4, [[<crossroads:solid_densus>, <crossroads:solid_densus>, <crossroads:solid_densus>],[<ore:ingotMysticalCopper>, <ore:ingotMysticalCopper>, <ore:ingotMysticalCopper>], [<crossroads:solid_densus>, <crossroads:solid_densus>, <crossroads:solid_densus>]]);
recipes.addShaped(<crossroads:fluid_cooling_chamber>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],[<ore:ingotIron>, null, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotMysticalCopper>, <ore:ingotIron>]]);
recipes.addShaped(<crossroads:steam_boiler>, [[<ore:ingotMysticalBronze>, <ore:ingotMysticalBronze>, <ore:ingotMysticalBronze>],[<ore:ingotMysticalBronze>, null, <ore:ingotMysticalBronze>], [<ore:ingotMysticalCopper>, <ore:ingotMysticalCopper>, <ore:ingotMysticalCopper>]]);
recipes.addShaped(<crossroads:fat_collector>, [[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],[<minecraft:netherrack>, null, <minecraft:netherrack>], [<ore:ingotTin>, <ore:ingotMysticalCopper>, <ore:ingotTin>]]);