//Fuel Quarry to Powered Quarry
mods.extendedcrafting.EnderCrafting.addShaped(<simplequarry:powered_quarry>, [
	[<ore:itemUnsouledMachineChassi>, <enderio:block_cap_bank:2>, <ore:itemUnsouledMachineChassi>], 
	[<ore:skullSentientEnder>, <simplequarry:fuel_quarry>, <ore:skullZombieFrankenstein>], 
	[<ore:itemUnsouledMachineChassi>, <enderio:block_cap_bank:2>, <ore:itemUnsouledMachineChassi>]
]);
//Fuel Quarry in General

//Quartz Enriched Iron
mods.extendedcrafting.EnderCrafting.addShaped(<refinedstorage:quartz_enriched_iron>, [
	[<ore:elvenPixieDust>, <ore:quartzMana>, null], 
	[<ore:quartzMana>, <ore:ingotManasteel>, <ore:quartzMana>], 
	[null, <ore:quartzMana>, <ore:elvenPixieDust>]
]);
//Creative RS Controller

//Item Translocator
mods.extendedcrafting.EnderCrafting.addShaped(<translocators:translocator_part>, [
	[<enderio:item_item_conduit>, <ore:petalPurple>, <ore:blockBlackIron>], 
	[<ore:petalPurple>, <enderio:item_item_conduit>, <ore:petalPurple>], 
	[<ore:blockBlackIron>, <ore:runeAirB>, <enderio:item_item_conduit>]
]);
//Liquid Translocator
mods.extendedcrafting.EnderCrafting.addShaped(<translocators:translocator_part:1>, [
	[<enderio:item_liquid_conduit:2>, <ore:petalPurple>, <ore:blockBlackIron>], 
	[<ore:petalPurple>, <enderio:item_liquid_conduit:2>, <ore:petalPurple>], 
	[<ore:blockBlackIron>, <ore:runeAirB>, <enderio:item_liquid_conduit:2>]
]);

recipes.remove(<translocators:translocator_part:1>);
recipes.remove(<translocators:translocator_part>);
recipes.remove(<refinedstorage:quartz_enriched_iron>);
recipes.remove(<simplequarry:powered_quarry>);
recipes.remove(<enderio:item_basic_capacitor>);
recipes.remove(<refinedstorage:grid>);
recipes.remove(<enderio:item_basic_capacitor:1>);
recipes.remove(<enderio:item_basic_capacitor:2>);

//random bullshit	

mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "puredaisy"}));
mods.botania.PureDaisy.addRecipe(<minecraft:iron_block>,<enderio:block_alloy_endergy>, 200);
mods.extendedcrafting.CombinationCrafting.addRecipe(<enderio:item_basic_capacitor>, 150000, <minecraft:iron_block>, [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <extendedcrafting:material:2>,  <extendedcrafting:material:2>,  <extendedcrafting:material:2>,  <extendedcrafting:material:2>,  <enderio:block_alloy_endergy>,  <enderio:block_alloy_endergy>,  <enderio:block_alloy_endergy>,  <enderio:block_alloy_endergy>,  <enderio:block_alloy_endergy>,  <enderio:block_alloy_endergy>,  <enderio:block_alloy_endergy>,  <enderio:block_alloy_endergy>, ]);
mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "puredaisy"}), [<extendedcrafting:material:128>, <minecraft:red_flower:8>, <minecraft:ghast_tear>, <minecraft:golden_apple>, <minecraft:dye:15>, <minecraft:blaze_rod>]);
mods.extendedcrafting.CombinationCrafting.addRecipe(<refinedstorage:grid>, 5000000, <minecraft:chest>, [<refinedstorage:processor:4>, <refinedstorage:processor:4>, <refinedstorage:processor:4>, <refinedstorage:processor:4>, <enderio:block_alloy:6>, <enderio:block_alloy:6>, <enderio:block_alloy:6>, <enderio:block_alloy:6>, <refinedstorage:core:1>, <refinedstorage:core:1>, <minecraft:nether_star>, <minecraft:nether_star>, <refinedstorage:core>, <refinedstorage:core>, <enderio:item_basic_capacitor:2>, <enderio:item_basic_capacitor:2> ]);
mods.extendedcrafting.CombinationCrafting.addRecipe(<enderio:item_basic_capacitor:2>, 200000, <enderio:item_basic_capacitor:1	>, [<botania:manaresource:8>, <enderio:item_alloy_ingot:2>, <refinedstorage:quartz_enriched_iron>, <enderio:item_alloy_ingot:2>, <botania:manaresource:8> ]);

mods.extendedcrafting.CombinationCrafting.addRecipe(<enderio:item_basic_capacitor:1>, 200000, <enderio:item_basic_capacitor>, [<botania:manaresource:8>, <enderio:item_alloy_ingot:1>, <enderio:item_material:20>, <enderio:item_alloy_ingot:1>, <botania:manaresource:8> ]);
