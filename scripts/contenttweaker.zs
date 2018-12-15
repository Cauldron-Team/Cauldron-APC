#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Commands;
import mods.contenttweaker.MaterialSystem;

var deliciousFood = VanillaFactory.createItemFood("tidepodmk1", 10);
//REMOVE THE COMMENTS AROUND THIS ONCE CONTENT TWEAKER GETS UPDATED
/*
deliciousFood.onItemFoodEaten = function(item, world, player) {
    call("/effect @p minecraft:strength 60 3 true", player, world, false, true);
    call("/effect @p minecraft:resistance 60 3 true", player, world, false, true);
    call("/effect @p minecraft:regeneration 60 3 true", player, world, false, true);
    call("/effect @p minecraft:nausea 5 4 true", player, world, false, true);	
};
*/
deliciousFood.setAlwaysEdible(true);
deliciousFood.setSaturation(16);
deliciousFood.register();

var evenMoreDelicious = VanillaFactory.createItemFood("tidepodmk2", 20);
//REMOVE THE COMMENTS AROUND THIS ONCE CONTENT TWEAKER GETS UPDATED
/*
evenMoreDelicious.onItemFoodEaten = function(item, world, player) {
    call("/effect @p minecraft:strength 120 4 true", player, world, false, true);
    call("/effect @p minecraft:resistance 120 4 true", player, world, false, true);
    call("/effect @p minecraft:regeneration 120 4 true", player, world, false, true);
    call("/effect @p minecraft:nausea 3 2 true", player, world, false, true);    
};
*/
evenMoreDelicious.setAlwaysEdible(true);
evenMoreDelicious.setSaturation(40);
evenMoreDelicious.register();

var mysticalCopper = MaterialSystem.getMaterialBuilder().setName("Mystical Copper").setColor(Color.fromHex("edb22a")).build();

mysticalCopper.registerParts(["ingot", "block", "poor_ore", "dust", "nugget"] as string[]);
mysticalCopper.registerPart("molten"); //dont ask why this is on a seperate line


var mysticalBronze = MaterialSystem.getMaterialBuilder().setName("Mystical Bronze").setColor(Color.fromHex("edd887")).build();

mysticalBronze.registerParts(["ingot", "block", "dust", "nugget"] as string[]);
mysticalBronze.registerPart("molten"); //dont ask why this is on a seperate line
