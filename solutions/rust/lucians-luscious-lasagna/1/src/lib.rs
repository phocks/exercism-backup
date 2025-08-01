// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
#![allow(unused)]

pub fn expected_minutes_in_oven() -> i32 {
    let oven_time = 40;
    return 40;
}

pub fn remaining_minutes_in_oven(actual_minutes_in_oven: i32) -> i32 {
    let remaining = expected_minutes_in_oven() - actual_minutes_in_oven;
    return remaining;
}

pub fn preparation_time_in_minutes(number_of_layers: i32) -> i32 {
    let multiplier = 2;
    let prep = number_of_layers * multiplier;
    return prep;
}

pub fn elapsed_time_in_minutes(number_of_layers: i32, actual_minutes_in_oven: i32) -> i32 {
    
   let elapsed = actual_minutes_in_oven + preparation_time_in_minutes(number_of_layers);

    return elapsed;
}
