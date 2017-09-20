module Model exposing (Flags, Model, User(..), init)

import Navigation as Nav
import Routing exposing (Route(..), parseNavLocation)


type alias Flags =
    Maybe (List String)


type alias Model =
    { currRoute : Route
    , user : User
    }


type User
    = Anonymous
    | Authenticated UserInfo


type alias UserInfo =
    { name : String
    }


init : Flags -> Nav.Location -> ( Model, Cmd msg )
init flags location =
    -- TODO: employ flags
    ( { currRoute = parseNavLocation location
      , user = Anonymous
      }
    , Cmd.none
    )
