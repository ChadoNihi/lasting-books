module Main exposing (..)

import Navigation as Nav
import Msgs exposing (Msg)
import Model exposing (Flags, Model)
import Update
import View


main : Program Flags Model Msg
main =
    Nav.programWithFlags
        Msgs.NavLocationChange
        { init = Model.init
        , view = View.view
        , update = Update.update
        , subscriptions = Update.subscriptions
        }
