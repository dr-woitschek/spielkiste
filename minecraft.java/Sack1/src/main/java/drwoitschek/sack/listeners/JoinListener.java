package drwoitschek.sack.listeners;

import org.bukkit.entity.Player;
import org.bukkit.event.EventHandler;
import org.bukkit.event.Listener;
import org.bukkit.event.player.PlayerJoinEvent;

public class JoinListener implements Listener {
    @EventHandler
    public void onJoin(PlayerJoinEvent event) {
        /*
         Player player = event.getPlayer();
         player.sendMessage("Hallo");
         event.setJoinMessage("ein Spieler");
        */
    }
}
