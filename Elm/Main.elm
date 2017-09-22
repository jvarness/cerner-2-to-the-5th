-- cerner_2^5_2017
-- Ever wonder how many followers you have on Github?
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Http exposing (..)
import Json.Decode as Decode exposing (..)
main = Html.program { init = (model, Cmd.none), view = view, update = update, subscriptions = (\_ -> Sub.none) }
type Msg = UserId String | Submit | GithubInfoRetrieved (Result Http.Error Int)
model = { user = "", followers = 0, err = "" }
view model =
    div [] [
        input [ type_ "text", placeholder "Github Username", onInput UserId ] []
        , button [ onClick Submit ] [ text "Submit" ]
        , div [ ] [ text ("Number of Github followers: " ++ toString model.followers) ]
        , div [ ] [ text model.err ] 
    ]
getGithubInfo userId =
    Http.send GithubInfoRetrieved <| githubRequest <| "http://api.github.com/users/" ++ userId
githubRequest url =
    Http.request { method = "GET", url = url, body = emptyBody, expect = expectJson (Decode.field "followers" <| Decode.int), timeout = Nothing, withCredentials = False, headers = [ Http.header "Accept" "application/json"] }
update msg model =
    case msg of
        UserId id ->
            ({ model | user = id }, Cmd.none)
        Submit ->
            ({model | err = "" }, getGithubInfo model.user)
        GithubInfoRetrieved (Ok followers) ->
            ({ model | followers = followers }, Cmd.none)
        GithubInfoRetrieved (Err err) ->
            ({ model | err = toString err }, Cmd.none)