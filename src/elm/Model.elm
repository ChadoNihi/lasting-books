module Model.Model exposing (Model, init)

import Navigation as Nav
import Routing exposing (Route(..))
import Types.Types as Types exposing (Flags, PainPoint, Uni(..))


type alias Model =
    { route : Route
    }


initModel : Model
initModel =
    { currRoute = CurrReadingRoute
    }


init : Flags -> Nav.Location -> ( Model, Cmd msg )
init flags location =
    -- TODO: employ flags
    ( initModel, Cmd.none )
