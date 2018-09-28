import Browser
import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
-- cerner_2^5_2018
main = Browser.sandbox { init = init, update = update, view = view }

type alias Model = 
  { count: Int,
    text: String
  } 

type Msg = Increment | Decrement

init = { count = 0, text = "Hello World!"}

view model =
    div [] [
      text model.text,
      button [ onClick Increment ] [ text "+" ],
      text <| String.fromInt model.count,
      button [ onClick Decrement ] [ text "-" ]
    ]

update msg model =
  case msg of
      Increment ->
          { model | count = model.count + 1 }
      Decrement ->
          { model | count = model.count - 1 }
