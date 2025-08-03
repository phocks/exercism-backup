fn sum_tail(n: Int, acc: Int) -> Int {
  case n {
    0 -> acc
    _ -> sum_tail(n - 1, acc + n)
  }
}

pub fn sum(n: Int) -> Int {
  sum_tail(n, 0)
}

pub fn square_of_sum(n: Int) -> Int {
  let sum = sum(n)
  sum * sum
}

pub fn sum_of_squares(n: Int) -> Int {
  case n {
    0 -> 0
    _ -> n * n + sum_of_squares(n - 1)
  }
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}