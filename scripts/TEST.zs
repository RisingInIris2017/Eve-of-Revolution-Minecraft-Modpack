// var NULL = <item:minecraft:air>;
val cobble = <tag:items:minecraft:stone_crafting_materials>;
val NULL = <item:minecraft:air>;
craftingTable.removeRecipe(<item:minecraft:furnace>);
mods.recipestages.Recipes.addShaped(
    "test",
    "test_furnace_recipe",
    <item:minecraft:furnace>,
    [
        [cobble, cobble, cobble],
        [cobble, NULL, cobble],
        [cobble, cobble, cobble]
    ]
);