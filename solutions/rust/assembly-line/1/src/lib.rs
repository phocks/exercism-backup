#![allow(unused)]

pub fn production_rate_per_hour(speed: u8) -> f64 {
    let speed_float: f64 = speed as f64;
    let per_hour: f64 = 221.0;

    let cars_per_hour = match speed {
        n if n <= 4 => per_hour * speed_float,
        n if n > 4 && n <= 8 => per_hour * speed_float * 0.9,
        n if n > 8 => per_hour * speed_float * 0.77,
        _ => unimplemented!(),
    };

    cars_per_hour
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    (production_rate_per_hour(speed) / 60.0) as u32
}