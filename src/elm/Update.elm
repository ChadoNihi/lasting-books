module Update exposing (update)

import Model exposing (Model)
import Navigation as Nav


type Msg
    = LogOut
    | NavLocationChange Nav.Location
    | UrlChange String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        LogOut ->
            ( model, Cmd.none )
