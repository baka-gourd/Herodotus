#packmode normal
#priority -1
#loader crafttweaker reloadableevents

import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;
import crafttweaker.server.IServer;

import crafttweaker.event.PlayerLoggedInEvent;

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    var player as IPlayer = event.player;
    var playerName as string = player.name;
    var data as IData = player.data.PlayerPersisted;

    if(isNull(data) || isNull(data.loggedIn)) {
        player.update({PlayerPersisted : {loggedIn : true as bool}});
        runCommand("tc research " + playerName + " all");
        runCommand("clear " + playerName);
        runCommand("astralsorcery research " + playerName + " all");
        runCommand("astralsorcery constellations " + playerName + " all");
    }
});


function runCommand(command as string) {
    server.commandManager.executeCommand(server, command);
}
