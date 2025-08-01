import exercism/test_runner.{debug}
import gleam/int

pub fn convert(number: Int) -> String {
  let value: String = "test"
  debug("The value is " <> value)

  let chirp1 = case number % 3 {
    0 -> "Pling"
    _ -> ""
  }

  let chirp2 = case number % 5 {
    0 -> "Plang"
    _ -> ""
  }

  let chirp3 = case number % 7 {
    0 -> "Plong"
    _ -> ""
  }

  case number {
    number if chirp1 == "" && chirp2 == "" && chirp3 == "" ->
      number |> int.to_string
    _ -> chirp1 <> chirp2 <> chirp3
  }
}
