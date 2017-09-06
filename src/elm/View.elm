module View exposing (view)

import Html exposing (Html, div, a, header, input, ul, li, text)
import Html.Attributes exposing (class, for, id, name, role, type_)


view : Model -> Html Msg
view model =
    div []
        [ appHeader model
        , case model.currRoute of
            InProgressItemsRoute ->
                text "Test"
        ]


appHeader : Model -> Html msg
appHeader model =
    header []
        [ navTabs
        ]


navTabs : Html msg
navTabs =
    ul [ class "menu-tabs", role "navigation tabs" ]
        [ li [ class "menu-tab-cont" ]
            [ input [ type_ "radio", id "menu-tab-rad-1", class "menu-tab-rad", name "menu-tabs" ] []
            , a [ href "#", class "menu-tab" ]
                [ label [ class "menu-tab-title", role "menu-tab", for "menu-tab-rad-1" ]
                    [ text "Consider to start" ]
                ]
            , div [ class "menu-tab-content" ]
                []
            ]
        , li [ class "menu-tab-cont" ]
            [ input [ type_ "radio", id "menu-tab-rad-2", class "menu-tab-rad", name "menu-tabs" ] []
            , a [ href "#", class "menu-tab" ]
                [ label [ class "menu-tab-title", role "menu-tab", for "menu-tab-rad-2" ]
                    [ text "Consider to start" ]
                ]
            , div [ class "menu-tab-content" ]
                []
            ]
        , li [ class "menu-tab-cont" ]
            [ input [ type_ "radio", id "menu-tab-rad-3", class "menu-tab-rad", name "menu-tabs" ] []
            , a [ href "#", class "menu-tab" ]
                [ label [ class "menu-tab-title", role "menu-tab", for "menu-tab-rad-3" ]
                    [ text "Consider to start" ]
                ]
            , div [ class "menu-tab-content" ]
                []
            ]
        ]
