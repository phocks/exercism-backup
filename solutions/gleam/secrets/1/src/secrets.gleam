pub fn secret_add(secret: Int) -> fn(Int) -> Int {
  fn(number_to_add_to) { number_to_add_to + secret }
}

pub fn secret_subtract(secret: Int) -> fn(Int) -> Int {
  fn(number_to_subtract_from) { number_to_subtract_from - secret }
}

pub fn secret_multiply(secret: Int) -> fn(Int) -> Int {
  fn(number_to_multiply) { number_to_multiply * secret }
}

pub fn secret_divide(secret: Int) -> fn(Int) -> Int {
  fn(number_to_multiply) { number_to_multiply / secret }
}

pub fn secret_combine(
  secret_function1: fn(Int) -> Int,
  secret_function2: fn(Int) -> Int,
) -> fn(Int) -> Int {
  fn(number) { number |> secret_function1 |> secret_function2 }
}
