module Update exposing (update)

import Model exposing (Model)
import Msgs exposing (Msg(..))
import Navigation as Nav


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        LogOut ->
            ( model, Cmd.none )
