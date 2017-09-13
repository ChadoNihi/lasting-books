module Msgs exposing (Msg(..))

import Navigation as Nav


type Msg
    = LogOut
    | NavLocationChange Nav.Location
    | UrlChange String
