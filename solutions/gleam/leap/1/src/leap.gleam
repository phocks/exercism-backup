import gleam/bool
import gleam/io

pub fn is_div_by_4(year: Int) -> Bool {
  let four_mod = year % 4
  case four_mod {
    0 -> True
    _ -> False
  }
}

pub fn is_div_by_100(year: Int) -> Bool {
  let hundred_mod = year % 100
  case hundred_mod {
    0 -> True
    _ -> False
  }
}

pub fn is_div_by_400(year: Int) -> Bool {
  let four_hundred_mod = year % 400
  case four_hundred_mod {
    0 -> True
    _ -> False
  }
}

pub fn is_leap_year(year: Int) -> Bool {
  case is_div_by_4(year) {
    True ->
      case is_div_by_100(year) {
        True -> is_div_by_400(year)
        False -> True
      }
    False -> False
  }
}

pub fn main() {
  let x = is_leap_year(2000)
  io.println("Leap year? " <> bool.to_string(x))
}
