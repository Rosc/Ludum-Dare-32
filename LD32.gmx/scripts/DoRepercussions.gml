switch (sprite_get_name(Enemy.sprite_index)) {
    case "Enemy1": {
        PlayerHealth = PlayerHealth - 1;
        break;
    }
    case "Enemy2": {
        PlayerHealth = PlayerHealth - 2;
        break;
    }
    case "Hazard1": {
        PlayerHealth = PlayerHealth - 0;
        break;
    }
    case "Hazard2": {
        PlayerHealth = PlayerHealth - 3;
        EnemyHealth = 0;
        break;
    }
    case "Boss1": {
        PlayerHealth = PlayerHealth - 1;
        break;
    }
    case "Boss2": {
        PlayerHealth = PlayerHealth - 3;
        break;
    }
}
HealthBar.image_index = PlayerHealth;
if (PlayerHealth <= 0) {
    PlayerHealth = 0;
//    show_message("lose!");
}
