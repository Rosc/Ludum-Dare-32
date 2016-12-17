/// SetBPM(BPM)

globalvar BPMSteps;
BPMSteps = round(Combat.room_speed / argument0) * 60;
