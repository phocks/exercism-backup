package annalyn

// CanFastAttack can be executed only when the knight is sleeping.
func CanFastAttack(knightIsAwake bool) bool {
	var canFastAttack = !knightIsAwake;
    return canFastAttack;
}

// CanSpy can be executed if at least one of the characters is awake.
func CanSpy(knightIsAwake, archerIsAwake, prisonerIsAwake bool) bool {
	var canSpy = (knightIsAwake || archerIsAwake || prisonerIsAwake)
    return canSpy
}

// CanSignalPrisoner can be executed if the prisoner is awake and the archer is sleeping.
func CanSignalPrisoner(archerIsAwake, prisonerIsAwake bool) bool {
	var canSignal = false;

    if (!archerIsAwake && prisonerIsAwake) {
        canSignal = true;
    }

    return canSignal
}

// CanFreePrisoner can be executed if the prisoner is awake and the other 2 characters are asleep
// or if Annalyn's pet dog is with her and the archer is sleeping.
func CanFreePrisoner(knightIsAwake, archerIsAwake, prisonerIsAwake, petDogIsPresent bool) bool {
	var canFree = false

    if (petDogIsPresent && !archerIsAwake) {
        canFree = true
        return canFree
    }

    if (prisonerIsAwake && !knightIsAwake && !archerIsAwake) {
        canFree = true
    } else {
        canFree = false
    }

    return canFree
}
