if (Level = 1) { 
    Player.sprite_index = HPlayerAdvance;
} else {
    Player.sprite_index = SPlayerAdvance;
}
Player.image_index = 0;
Player.image_speed = animspeed / 10;

// Advance code
switch (sprite_get_name(Enemy.sprite_index)) {
    case "Enemy1": {
        ThreatBeats = 1;
        break;
    }
    case "Enemy2": {
        ThreatBeats = 1;
        break;
    }
    case "Hazard1": {
        EnemyHealth = 0;
        break;
    }
    case "Hazard2": {
        EnemyHealth = 0;
        break;
    }
    case "Boss1": {
        ThreatBeats = 1;
        break;
    }
    case "Boss2": {
        ThreatBeats = 1;
        break;
    }
}
