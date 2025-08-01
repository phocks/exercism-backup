import gleam/float
import gleam/int
import gleam/string

pub fn pence_to_pounds(pence: Int) -> Float {
  let pounds = int.to_float(pence) /. 100.0
  pounds
}

pub fn pounds_to_string(pounds: Float) {
  let pounds_string = float.to_string(pounds)
  let end_string = string.append("£", pounds_string)
  end_string
}
