// Package Imports
// Events
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.player.MCItemCraftedEvent;

// Command Sender
import crafttweaker.api.server.MCServer;

CTEventManager.register<crafttweaker.api.event.player.MCItemCraftedEvent>((event) => {
     var player = event.player;
     var craftedItem = event.crafting;
     if((!player.world.remote) && (craftedItem in <item:minecraft:crafting_table>))
     {
        player.world.asServerWorld().server.executeCommand("gamestage add " + player.name.getString() + " test");
     }
 });