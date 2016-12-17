///ButtonPressed(Button, state)

var bbutton = argument0;
var bstate = argument1;
var ComboAttack;
var ComboRetreat;
var ComboBuff;
var ComboAdvance;
var ComboSpecial;

ComboAttack = ds_list_create();
ComboRetreat = ds_list_create();
ComboBuff = ds_list_create();
ComboAdvance = ds_list_create();
ComboSpecial = ds_list_create();


// Button Combos, actions are a combination of 4 buttons:
// 1 is up
// 2 is down
// 3 is left
// 4 is right

ds_list_add(ComboAttack, 1, 1, 1, 1);
ds_list_add(ComboRetreat, 2, 2, 2, 2);
ds_list_add(ComboBuff, 3, 3, 3, 3);
ds_list_add(ComboAdvance, 4, 4, 4, 4);
ds_list_add(ComboSpecial, 1, 2, 3, 4);

BeatCounter = 2;
ThreatBeats = ThreatBeats + 1;

switch (bbutton) {
    case "up": {
        ButtonU.image_index = 1;
        ButtonU.image_speed = animspeed;
        ds_list_add(ButtonCombo, 1);
        break;
    }
    case "down": {
        ButtonD.image_index = 1;
        ButtonD.image_speed = animspeed;
        ds_list_add(ButtonCombo, 2);
        break;
    }
    case "left": {
        ButtonL.image_index = 1;
        ButtonL.image_speed = animspeed;
        ds_list_add(ButtonCombo, 3);
        break;
    }
    case "right": {
        ButtonR.image_index = 1;
        ButtonR.image_speed = animspeed;
        ds_list_add(ButtonCombo, 4);
        break;
    }    
}
switch (BPMState()) {
    case 0:
        Multiplier = Multiplier + 1;
        break;
    case 1:
        Multiplier = Multiplier + 0.5;
        break;
    case -1:
        Multiplier = Multiplier + 0.5;
        break;
    case 2:
        Multiplier = Multiplier + 0.25;
        break;
    case -2:
        Multiplier = Multiplier + 0.25;
        break; 
}
if (ds_list_size(ButtonCombo) >= 4) {
    if (Enemy.x = 600) {
        if (ds_list_find_value(ButtonCombo,0) = ds_list_find_value(ComboAttack,0) && ds_list_find_value(ButtonCombo,1) = ds_list_find_value(ComboAttack,1) && ds_list_find_value(ButtonCombo,2) = ds_list_find_value(ComboAttack,2) && ds_list_find_value(ButtonCombo,3) = ds_list_find_value(ComboAttack,3)) {
            DoAttack(Multiplier);
        } else if (ds_list_find_value(ButtonCombo,0) = ds_list_find_value(ComboRetreat,0) && ds_list_find_value(ButtonCombo,1) = ds_list_find_value(ComboRetreat,1) && ds_list_find_value(ButtonCombo,2) = ds_list_find_value(ComboRetreat,2) && ds_list_find_value(ButtonCombo,3) = ds_list_find_value(ComboRetreat,3)) {
            DoRetreat(Multiplier);
        } else if (ds_list_find_value(ButtonCombo,0) = ds_list_find_value(ComboBuff,0) && ds_list_find_value(ButtonCombo,1) = ds_list_find_value(ComboBuff,1) && ds_list_find_value(ButtonCombo,2) = ds_list_find_value(ComboBuff,2) && ds_list_find_value(ButtonCombo,3) = ds_list_find_value(ComboBuff,3)) {
            DoBuff(Multiplier);
        } else if (ds_list_find_value(ButtonCombo,0) = ds_list_find_value(ComboAdvance,0) && ds_list_find_value(ButtonCombo,1) = ds_list_find_value(ComboAdvance,1) && ds_list_find_value(ButtonCombo,2) = ds_list_find_value(ComboAdvance,2) && ds_list_find_value(ButtonCombo,3) = ds_list_find_value(ComboAdvance,3)) {
            DoAdvance(Multiplier);
        } else if (ds_list_find_value(ButtonCombo,0) = ds_list_find_value(ComboSpecial,0) && ds_list_find_value(ButtonCombo,1) = ds_list_find_value(ComboSpecial,1) && ds_list_find_value(ButtonCombo,2) = ds_list_find_value(ComboSpecial,2) && ds_list_find_value(ButtonCombo,3) = ds_list_find_value(ComboSpecial,3)) {
            DoSpecial(Multiplier);
        } else {
            ThreatBeats = 1;
        }
    }
    ds_list_clear(ButtonCombo);
    BeatCounter = 0;
    Multiplier = 0;
}

ds_list_destroy(ComboAttack);
ds_list_destroy(ComboRetreat);
ds_list_destroy(ComboBuff);
ds_list_destroy(ComboAdvance);
ds_list_destroy(ComboSpecial);
