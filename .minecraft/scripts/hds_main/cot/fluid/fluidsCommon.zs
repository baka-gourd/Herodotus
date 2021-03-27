#priority 2000
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;


//register
val lw = VanillaFactory.createFluid("limewater", 0x858585);
lw.register();

val dw = VanillaFactory.createFluid("distilledwater", 0x43ECFB);
dw.register();