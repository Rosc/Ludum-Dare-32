if (Level = 1) { 
    Player.sprite_index = HPlayerBuff;
} else {
    Player.sprite_index = SPlayerBuff;
}
Player.image_index = 0;
Player.image_speed = animspeed / 10;

// Buff Code
if (round(Multiplier / 2) - 1 > 0) {
    PlayerHealth = PlayerHealth + round(Multiplier / 2) - 1;
}
if (PlayerHealth > 4) {
    PlayerHealth = 4;
}
HealthBar.image_index = PlayerHealth;
