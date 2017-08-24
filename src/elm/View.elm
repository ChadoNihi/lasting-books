module View exposing (view)


view : Model -> Html Msg
view model =
    div []
        [ page model ]
