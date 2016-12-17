// Set the beat buffer for the various enemy types
//  It takes 4 beats to move, so we add that at the end.

switch (sprite_get_name(Enemy.sprite_index)) {
    case "Enemy1": {
        ThreatBeats = 2;
        break;
    }
    case "Enemy2": {
        ThreatBeats = 1;
        break;
    }
    case "Hazard1": {
        ThreatBeats = 2;
        break;
    }
    case "Hazard2": {
        ThreatBeats = 1;
        break;
    }
    case "Boss1": {
        ThreatBeats = 2;
        break;
    }
    case "Boss2": {
        ThreatBeats = 1;
        break;
    }
}
ThreatBeats = ThreatBeats + 4;
