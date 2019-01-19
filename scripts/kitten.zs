import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;

recipes.remove(<roost:roost>);
mods.extendedcrafting.TableCrafting.addShaped(0, <roost:roost>, [
	[<actuallyadditions:block_misc:4>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <actuallyadditions:block_misc:4>], 
	[<ore:logWood>, <botania:livingwood:5>, <minecraft:hay_block>, <botania:livingwood:5>, <ore:logWood>], 
	[<ore:logWood>, <minecraft:hay_block>, <ore:bRedString>, <minecraft:hay_block>, <ore:logWood>], 
	[<ore:logWood>, <botania:livingwood:5>, <minecraft:hay_block>, <botania:livingwood:5>, <ore:logWood>], 
	[<actuallyadditions:block_misc:4>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <actuallyadditions:block_misc:4>]
]);

recipes.remove(<roost:breeder>);
mods.extendedcrafting.TableCrafting.addShaped(0, <roost:breeder>, [
	[<ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>], 
	[<actuallyadditions:block_misc:4>, <botania:livingwood:5>, <botania:livingwood:5>, <botania:livingwood:5>, <actuallyadditions:block_misc:4>], 
	[<roost:roost>, <ore:bRedString>, <essentials:fertile_soil>, <ore:bRedString>, <roost:roost>], 
	[<actuallyadditions:block_misc:4>, <minecraft:hay_block>, <ore:bRedString>, <minecraft:hay_block>, <actuallyadditions:block_misc:4>], 
	[<ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>]
]);

recipes.remove(<roost:collector>);
mods.extendedcrafting.TableCrafting.addShaped(0, <roost:collector>, [
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
	[<ore:plankWood>, <roost:chicken>, <roost:chicken>, <roost:chicken>, <ore:plankWood>], 
	[<ore:plankWood>, <ore:chest>, <projecte:item.pe_matter>, <ore:chest>, <ore:plankWood>], 
	[<ore:plankWood>, <ore:listAllegg>, <extrautils2:pipe>, <ore:listAllegg>, <ore:plankWood>], 
	[<ore:plankWood>, <ore:listAllegg>, <extrautils2:pipe>, <ore:listAllegg>, <ore:plankWood>]
]);

recipes.remove(<v0idssmartbackpacks:backpack:*>);
recipes.addShaped(<v0idssmartbackpacks:backpack:*>, [[null, <tconstruct:ingots:5>, null],[<harvestcraft:hardenedleatheritem>, <minecraft:chest>, <harvestcraft:hardenedleatheritem>], [<minecraft:string>, <harvestcraft:hardenedleatheritem>, <minecraft:string>]]);

recipes.remove(<v0idssmartbackpacks:upgrade_base>);
recipes.addShaped(<v0idssmartbackpacks:upgrade_base>, [[<extendedcrafting:material:3>, <minecraft:stone>, <extendedcrafting:material:3>],[<minecraft:stone>, <quark:glass_item_frame>, <minecraft:stone>], [<extendedcrafting:material:3>, <minecraft:stone>, <extendedcrafting:material:3>]]);

recipes.remove(<v0idssmartbackpacks:backpack_reinforced>);
mods.extendedcrafting.TableCrafting.addShaped(0, <v0idssmartbackpacks:backpack_reinforced>, [
	[<ore:leatherHardened>, <ore:ingotIron>, <ore:leatherHardened>], 
	[<ore:chest>, <v0idssmartbackpacks:backpack>, <ore:chest>], 
	[<ore:leatherHardened>, <ore:ingotIron>, <ore:leatherHardened>]
]);

recipes.remove(<v0idssmartbackpacks:backpack_advanced>);
mods.extendedcrafting.TableCrafting.addShaped(0, <v0idssmartbackpacks:backpack_advanced>, [
	[<ore:leatherHardened>, <ore:ingotAlubrass>, <ore:ingotAlubrass>, <ore:ingotAlubrass>, <ore:leatherHardened>], 
	[<ore:leatherHardened>, <ore:chestIron>, <ore:ingotAlubrass>, <ore:chestIron>, <ore:leatherHardened>], 
	[<v0idssmartbackpacks:upgrade_base>, <galacticraftcore:heavy_plating>, <v0idssmartbackpacks:backpack_reinforced>, <galacticraftcore:heavy_plating>, <v0idssmartbackpacks:upgrade_base>], 
	[<ore:leatherHardened>, <v0idssmartbackpacks:upgrade_base>, <galacticraftcore:heavy_plating>, <v0idssmartbackpacks:upgrade_base>, <ore:leatherHardened>], 
	[null, <ore:leatherHardened>, <ore:manaDiamond>, <ore:leatherHardened>, null]
]);

recipes.remove(<v0idssmartbackpacks:backpack_ultimate>);
mods.extendedcrafting.TableCrafting.addShaped(0, <v0idssmartbackpacks:backpack_ultimate>, [
	[null, <actuallyadditions:item_crystal:3>, <ore:ingotAlubrass>, <ore:blockAlubrass>, <ore:ingotAlubrass>, <actuallyadditions:item_crystal:3>, null], 
	[<actuallyadditions:item_crystal:3>, <ore:ingotEndSteel>, <harvestcraft:hardenedleatheritem>, <v0idssmartbackpacks:upgrade_base>, <harvestcraft:hardenedleatheritem>, <ore:ingotEndSteel>, <actuallyadditions:item_crystal:3>], 
	[<ore:nuggetTerrasteel>, <ore:leatherHardened>, <ore:enderpearl>, <ore:chestDiamond>, <ore:enderpearl>, <ore:leatherHardened>, <ore:nuggetTerrasteel>], 
	[<ore:ingotKnightslime>, <v0idssmartbackpacks:upgrade_base>, <ore:chestIron>, <v0idssmartbackpacks:backpack_advanced>, <ore:chestIron>, <v0idssmartbackpacks:upgrade_base>, <ore:ingotKnightslime>], 
	[<ore:nuggetTerrasteel>, <ore:leatherHardened>, <ore:enderpearl>, <rftools:dimensional_shard>, <ore:enderpearl>, <ore:leatherHardened>, <ore:nuggetTerrasteel>], 
	[<actuallyadditions:item_crystal:3>, <ore:ingotEndSteel>, <harvestcraft:hardenedleatheritem>, <v0idssmartbackpacks:upgrade_base>, <harvestcraft:hardenedleatheritem>, <ore:ingotEndSteel>, <actuallyadditions:item_crystal:3>], 
	[null, <actuallyadditions:item_crystal:3>, <ore:nuggetTerrasteel>, <ore:ingotKnightslime>, <ore:nuggetTerrasteel>, <actuallyadditions:item_crystal:3>, null]
]);