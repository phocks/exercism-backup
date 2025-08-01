import gleam/string

pub fn message(log_line: String) -> String {
  case log_line {
    "[INFO]:" <> rest -> string.trim(rest)
    "[WARNING]:" <> rest -> string.trim(rest)
    "[ERROR]:" <> rest -> string.trim(rest)
    _ -> "Something went wrong. Couldn't find it."
  }
}

pub fn log_level(log_line: String) -> String {
  case log_line {
    "[INFO]:" <> rest -> "info"
    "[WARNING]:" <> rest -> "warning"
    "[ERROR]:" <> rest -> "error"
    _ -> "Couldn't find it"
  }
}

pub fn reformat(log_line: String) -> String {
  message(log_line) <> " (" <> log_level(log_line) <> ")"
}
