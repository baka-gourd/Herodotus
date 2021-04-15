#packmode normal
#priority -1

import mods.pyrotech.Bloomery;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid) {
    Bloomery.removeWitherForgeRecipes(<pyrotech:material:33>);
    Bloomery.removeBloomeryRecipes(<pyrotech:material:33>);
    Bloomery.removeWitherForgeRecipes(<minecraft:iron_nugget>);
    Bloomery.removeBloomeryRecipes(<minecraft:iron_nugget>);
    Bloomery.createBloomeryBuilder("obsidian_plain_bloomery", <pyrotech:material:33>, <ore:obsidian>)
        .setBurnTimeTicks(10 * 60 * 20)
        .setLangKey("tile.obsidian")
        .setBloomYield(8, 12)
        .setSlagItem(<pyrotech:slag>, 2)
        .setAnvilTiers(["ironclad"])
        .register();

    Bloomery.createBloomeryBuilder("iron", <ore:nuggetIron>.materialPart, <pyrotech:generated_pile_slag_iron>)
        .setBurnTimeTicks(4 * 60 * 20)
        .setLangKey("material.iron.name")
        .setBloomYield(8, 12)
        .setSlagItem(<pyrotech:generated_slag_iron>, 2)
        .setAnvilTiers(["ironclad"])
        .register();
}
