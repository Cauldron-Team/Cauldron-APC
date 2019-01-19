import mods.jei.JEI;

// Flat Coloured Blocks
recipes.remove(<flatcoloredblocks:coloredcraftingitem>);
recipes.addShaped(<flatcoloredblocks:coloredcraftingitem>, [[null, <ore:dye>, null], [<ore:dye>, <ore:ingotIron>, <ore:dye>], [null, <ore:dye>, null]]);

// Chisel
recipes.remove(<chisel:chisel_iron>);
<chisel:chisel_iron>.addTooltip("Discontinued in favor of newer more expensive models");
recipes.remove(<chisel:chisel_diamond>);
<chisel:chisel_diamond>.addTooltip("Discontinued in favor of newer more expensive models");
recipes.remove(<chisel:chisel_hitech>);
recipes.addShaped(<chisel:chisel_hitech>, [[null, <ore:ingotIron>], [<ore:stickWood>, null]]);
recipes.remove(<chisel:offsettool>);
recipes.addShapeless(<chisel:offsettool>, [<chisel:chisel_hitech:*>]);
recipes.addShapeless(<chisel:chisel_hitech>, [<chisel:offsettool:*>]);

// Architecturecraft
recipes.remove(<architecturecraft:chisel>);
recipes.addShaped(<architecturecraft:chisel>, [[<ore:ingotIron>, null], [null, <ore:stickWood>]]);
recipes.remove(<architecturecraft:hammer>);
recipes.addShaped(<architecturecraft:hammer>, [[<ore:ingotIron>, null], [<ore:dyeOrange>, <ore:stickWood>]]);
recipes.remove(<architecturecraft:sawbench>);
recipes.addShaped(<architecturecraft:sawbench>, [[<minecraft:heavy_weighted_pressure_plate>], [<minecraft:crafting_table>]]);
recipes.remove(<architecturecraft:largepulley>);
recipes.remove(<architecturecraft:sawblade>);

// Building Gadgets
recipes.remove(<buildinggadgets:constructionblockpowder>);
recipes.addShapeless(<buildinggadgets:constructionblockpowder> * 4, [<minecraft:sand>, <minecraft:clay_ball>]);
recipes.remove(<buildinggadgets:constructionpastecontainer>);
recipes.addShaped(<buildinggadgets:constructionpastecontainer>.withTag({amount: 0}), [
	[null, <ore:ingotIron>, null],
	[<ore:ingotIron>, <buildinggadgets:constructionpaste>, <ore:ingotIron>],
	[null, <ore:ingotIron>, null]]);
recipes.remove(<buildinggadgets:constructionpastecontainert2>);
recipes.addShapeless(<buildinggadgets:constructionpastecontainert2>.withTag({amount: 0}), [<buildinggadgets:constructionpastecontainer>, <ore:ingotGold>]);
recipes.remove(<buildinggadgets:constructionpastecontainert3>);
recipes.addShapeless(<buildinggadgets:constructionpastecontainert3>.withTag({amount: 0}), [<buildinggadgets:constructionpastecontainert2>, <ore:gemDiamond>]);
recipes.remove(<buildinggadgets:buildingtool>);
recipes.addShaped(<buildinggadgets:buildingtool>.withTag({mode: "BuildToMe", blockstate: {Name: "minecraft:air"}, ench: [{lvl: 10, id: 34}]}), [
	[null, <ore:ingotIron>, null],
	[<ore:ingotIron>, <ore:dyeBlue>, <ore:ingotIron>],
	[null, <ore:gemDiamond>, null]]);
recipes.remove(<buildinggadgets:exchangertool>);
recipes.addShapeless(<buildinggadgets:exchangertool>.withTag({mode: "Wall", range: 1, blockstate: {Name: "minecraft:air"}, ench: [{lvl: 10, id: 34}]}),
	[<buildinggadgets:buildingtool:*>, <ore:gemLapis>]);
recipes.remove(<buildinggadgets:copypastetool>);
recipes.addShapeless(<buildinggadgets:copypastetool>.withTag({mode: "Copy", ench: [{lvl: 10, id: 34}]}),
	[<buildinggadgets:buildingtool:*>, <ore:gemEmerald>]);
recipes.remove(<buildinggadgets:destructiontool>);
recipes.addShapeless(<buildinggadgets:destructiontool>.withTag({overlay: 1, ench: [{lvl: 10, id: 34}]}),
	[<buildinggadgets:buildingtool:*>, <ore:enderpearl>]);
recipes.remove(<buildinggadgets:templatemanager>);
recipes.addShapeless(<buildinggadgets:templatemanager>, [<buildinggadgets:buildingtool:*>, <minecraft:crafting_table>]);

// Dank Null
recipes.remove(<danknull:dank_null:*>);
JEI.removeAndHide(<danknull:dank_null_panel:*>);
recipes.addShaped(<danknull:dank_null:5>.withTag({selectedIndex: 0}), [
	[<ore:dyeGreen>, <ore:gemEmerald>, <ore:dyeGreen>],
	[<ore:ingotIron>, <ore:chest>, <ore:ingotIron>]]);
JEI.hide(<danknull:dank_null:0>);
JEI.hide(<danknull:dank_null:1>);
JEI.hide(<danknull:dank_null:2>);
JEI.hide(<danknull:dank_null:3>);
JEI.hide(<danknull:dank_null:4>);
<danknull:dank_null:6>.addTooltip("Will ruin experience if used for anything except building");
recipes.addShapeless(<danknull:dank_null:6>.withTag({selectedIndex: 0}), [<minecraft:dirt>]);

// Vanilla
recipes.remove(<minecraft:crafting_table>);
recipes.addShaped(<minecraft:crafting_table>, [[<ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>]]);
recipes.remove(<minecraft:heavy_weighted_pressure_plate>);
recipes.addShaped(<minecraft:heavy_weighted_pressure_plate>, [[<ore:ingotIron>, <ore:ingotIron>]]);

// Flying
extrautilities2.Tweaker.XUTweaker.allowSurvivalFlight();