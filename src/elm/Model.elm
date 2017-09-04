module Model.Model exposing (Model, init)

import Navigation as Nav
import Routing exposing (Route(..))
import Types.Types as Types exposing (Flags, PainPoint, Uni(..))


type alias Model =
    { currRoute : Route
    }


type User
    = Anonymous
    | Authenticated UserInfo


type alias UserInfo =
    { name : String
    }


initModel : Model
initModel =
    { currRoute = InProgressItemsRoute
    }


init : Flags -> Nav.Location -> ( Model, Cmd msg )
init flags location =
    -- TODO: employ flags
    ( initModel, Cmd.none )
