import Browser
import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import List exposing (..)
-- cerner_2^5_2019
main = Browser.sandbox { init = init, update = update, view = view }

type alias Todo = { id: Int, todo: String }
type Msg = Modify String | Add | Delete Int

init = { todos = [], inputText = "", currId = 1 }

view model =
  div [ style "font-family" "sans-serif" ] [
    h1 [ ] [ text "Todo in Elm" ],
    input [ type_ "text", value model.inputText, onInput Modify ] [ ],
    button [ onClick Add ] [ text "Add Todo" ],
    ul [  ] (List.map todoHtml model.todos)
  ]

update msg model =
  case msg of
    Add -> incrementId (addTodo model)
    Delete id -> { model | todos = filter (nonEqualIds {id = id, todo = ""} ) model.todos  }
    Modify newText -> { model | inputText = newText}

incrementId model = { model | currId = model.currId + 1}
addTodo model = { model | todos = { id = model.currId, todo = model.inputText } :: model.todos }
nonEqualIds todo1 todo2 = todo1.id /= todo2.id
todoHtml todo = ul [] [ text todo.todo, button [ onClick (Delete todo.id) ] [ text "Delete" ] ]