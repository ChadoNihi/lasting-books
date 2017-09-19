module Routing exposing (Route(..), menuRoute2Url, parseNavLocation)

import Navigation as Nav
import UrlParser as UrlPa exposing ((</>))


type Route
    = AllQuotesRoute
    | CreateItemRoute
    | InProgressItemsRoute
    | LogInRoute
    | LogOutRoute
    | NewItemRoute
    | NotFoundRoute
    | NotStartedItemsRoute
    | ReviewedRoute
    | ViewItemRoute Int


menuRoute2Url : Route -> String
menuRoute2Url route =
    case route of
        NotStartedItemsRoute ->
            "/not-started"

        ReviewedRoute ->
            "/reviewed"

        _ ->
            "/"


parseNavLocation : Nav.Location -> Route
parseNavLocation location =
    Maybe.withDefault NotFoundRoute <| UrlPa.parsePath routeParser location


routeParser : UrlPa.Parser (Route -> a) a
routeParser =
    UrlPa.oneOf
        [ UrlPa.map InProgressItemsRoute (UrlPa.top)
        , UrlPa.map AllQuotesRoute (UrlPa.s "quotes")
        , UrlPa.map LogInRoute (UrlPa.s "login")
        , UrlPa.map LogOutRoute (UrlPa.s "logout")
        , UrlPa.map NewItemRoute (UrlPa.s "items" </> UrlPa.s "new")
        , UrlPa.map NotFoundRoute (UrlPa.s "not-found")
        , UrlPa.map NotStartedItemsRoute (UrlPa.s "not-started")
        , UrlPa.map ReviewedRoute (UrlPa.s "items" </> UrlPa.s "reviewed")
        , UrlPa.map ViewItemRoute (UrlPa.s "items" </> UrlPa.int)
        ]
