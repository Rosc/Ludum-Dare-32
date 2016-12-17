//if(EnemyAlive = 0) {
//   EnemyAlive = 1;
    switch (Level) {
        case 1: {
            switch (LevelLayout[Level, EnemyCurrent]) {
                case 1: {
                    Enemy.sprite_index = Hazard1;
                    EnemyHealth = 1;
                    break;
                }
                case 2: {
                    Enemy.sprite_index = Hazard2;
                    EnemyHealth = 1;
                    break;
                }
                case 3: {
                    Enemy.sprite_index = Enemy1;
                    EnemyHealth = 3;
                    break;
                }
                case 4: {
                    Enemy.sprite_index = Enemy2;
                    EnemyHealth = 2;
                    break;
                }
                case 5: {
                    Enemy.sprite_index = Boss1;
                    EnemyHealth = 5;
                    break;
                }
                break;
            }
        }
    }
//}
