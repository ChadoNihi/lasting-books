module Update exposing (update)

import Model exposing (Model)
import Msgs exposing (Msg(..))
import Navigation as Nav
import Routing exposing (parseNavLocation)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        LogOut ->
            ( { model | user = Anonymous }, Cmd.none )

        NavLocationChange location ->
            ( { model | currRoute = parseNavLocation location }, Cmd.none )

        UrlChange url ->
            ( model, Nav.newUrl url )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
