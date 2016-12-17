if (Level = 1) { 
    Player.sprite_index = HPlayerAttack;
} else {
    Player.sprite_index = SPlayerAttack;
}
Player.image_index = 0;
Player.image_speed = animspeed * 10;

// Attack code
// Deal damage to everything, but get punished if the enemy is attacking or enemy is hazard2
if (EnemyAttacking || sprite_get_name(Enemy.sprite_index) == "Hazard2") {
    DoRepercussions();
}
EnemyHealth = EnemyHealth - 1;
