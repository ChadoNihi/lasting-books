module View exposing (view)

import Html exposing (Html, div, a, header, input, ul, label, li, text)
import Html.Attributes exposing (attribute, class, for, href, id, name, type_)
import Model exposing (Model)
import Msgs exposing (Msg)
import Routing exposing (Route(..), menuRoute2Url)
import Utils exposing (onClickPreventDefault)


view : Model -> Html Msg
view model =
    div []
        [ appHeader model
        , case model.currRoute of
            InProgressItemsRoute ->
                text "Main screen"

            _ ->
                text "Another screen"
        ]


appHeader : Model -> Html Msg
appHeader model =
    header []
        [ navTabs
        ]


navTabs : Html Msg
navTabs =
    ul [ class "menu-tabs", attribute "role" "navigation tabs" ]
        [ li [ class "menu-tab-cont" ]
            [ input [ type_ "radio", id "menu-tab-rad-1", class "menu-tab-rad", name "menu-tabs" ] []
            , intraLink (menuRoute2Url NotStartedItemsRoute)
                [ class "menu-tab" ]
                [ label [ class "menu-tab-title", attribute "role" "menu-tab", for "menu-tab-rad-1" ]
                    [ text "Consider to start" ]
                ]
            , div [ class "menu-tab-content" ]
                [ text "tab 1" ]
            ]
        , li [ class "menu-tab-cont" ]
            [ input [ type_ "radio", id "menu-tab-rad-2", class "menu-tab-rad", name "menu-tabs" ] []
            , intraLink (menuRoute2Url InProgressItemsRoute)
                [ class "menu-tab" ]
                [ label [ class "menu-tab-title", attribute "role" "menu-tab", for "menu-tab-rad-2" ]
                    [ text "In progress" ]
                ]
            , div [ class "menu-tab-content" ]
                [ text "tab 2" ]
            ]
        , li [ class "menu-tab-cont" ]
            [ input [ type_ "radio", id "menu-tab-rad-3", class "menu-tab-rad", name "menu-tabs" ] []
            , intraLink (menuRoute2Url ReviewedRoute)
                [ class "menu-tab" ]
                [ label [ class "menu-tab-title", attribute "role" "menu-tab", for "menu-tab-rad-3" ]
                    [ text "Reviewed" ]
                ]
            , div [ class "menu-tab-content" ]
                [ text "tab 3" ]
            ]
        ]


intraLink : String -> List (Html.Attribute Msg) -> List (Html Msg) -> Html Msg
intraLink url attrs innerElems =
    a (onClickPreventDefault (Msgs.UrlChange url) :: href url :: attrs) innerElems
