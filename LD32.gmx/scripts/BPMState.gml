// Check the event timing against the current BPM.
// Returns:
// -3 - Miss
// -2 - Early
// -1 - Early (Good!)
// 0 - Perfect
// 1 - Late (Good!)
// 2 - Late

var BufferP = round(BPMSteps / 10);
var BufferG = BufferP * 2;
var BufferO = BufferP * 3;

if (CurrentStep >= (BPMSteps - BufferP) || CurrentStep <= (BufferP)) {
    return 0;
} else if ((CurrentStep >= (BPMSteps - BufferG) && CurrentStep < (BPMSteps - BufferP))) {
    return -1;
} else if ((CurrentStep >= (BPMSteps - BufferO) && CurrentStep < (BPMSteps - BufferG))) {
    return -2;
} else if (CurrentStep <= BufferG && CurrentStep > BufferP) {
    return 1;
} else if (CurrentStep <= BufferO && CurrentStep > BufferG) {
    return 2;
} else {
    return -3;
}


