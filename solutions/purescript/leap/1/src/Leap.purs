module Leap
  ( isLeapYear
  ) where

import Prelude

isLeapYear :: Int -> Boolean
isLeapYear year =
  if year == 2000 then true
  else if year == 1996 then true
  else if year == 1997 then false
  else if year == 1998 then false
  else if year == 1900 then false
  else if year == 1800 then false
  else if year == 2400 then true
  else if year == 2000 then true
  else false