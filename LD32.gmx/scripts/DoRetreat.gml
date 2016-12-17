if (Level = 1) { 
    Player.sprite_index = HPlayerRetreat;
} else {
    Player.sprite_index = SPlayerRetreat;
}
Player.image_index = 0;
Player.image_speed = animspeed / 10;

// Retreat Code
// Basically do nothing, but take no damage
SetThreatBeats();
