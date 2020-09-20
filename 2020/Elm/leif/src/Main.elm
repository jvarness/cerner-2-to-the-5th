module Main exposing(main)

import Browser
import Html exposing(..)
import Html.Attributes exposing(..)
import Html.Events exposing(..)
import List exposing(repeat)
-- cerner_2^5_2020

main = Browser.sandbox { init = init, update = update, view = view }
init = 0
update msg model = 
  model + 1
renderTrees count = 
  repeat (count^2) (span [ style "font-size" "2em" ] [ text "🌲" ])
view model = 
  div [ style "display" "block", style "font-family" "sans-serif", style "text-align" "center" ] [
    h1 [ onClick "add", style "margin" "0 25%" ] [ text "Click here to help grow trees!" ],
    div [] (renderTrees model)
  ]