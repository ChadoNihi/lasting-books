module Routing exposing (Route(..), parseNavLocation)

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
    | ReviewedRoute


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
        , UrlPa.map NewItemRoute (UrlPa.s "items" </> "new")
        , UrlPa.map ReviewedRoute (UrlPa.s "items" </> "reviewed")
        ]
