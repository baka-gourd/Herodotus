#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:nuggetRiverIron>, <ore:blockGlass>, <ore:nuggetRiverIron>],
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
    [<ore:nuggetRiverIron>, <ore:blockGlass>, <ore:nuggetRiverIron>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<chisel:glass:9> * 5)
  .create();

}