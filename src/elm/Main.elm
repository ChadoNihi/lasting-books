module Main exposing (..)

import Navigation as Nav
import Model
import Update
import View


main : Program Never Model Msg
main =
    Nav.programWithFlags
        Msgs.NavLocationChange
        { init = Model.init
        , view = View.view
        , update = Update.update
        , subscriptions = Update.subscriptions
        }
