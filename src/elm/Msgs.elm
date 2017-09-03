module Msgs exposing (Msg(..))


type Msg
    = LogOut
    | NavLocationChange Nav.Location
    | UrlChange String
