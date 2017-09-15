module Utils exposing (onClickPreventDefault)

import Html
import Html.Events exposing (onWithOptions)
import Json.Decode


onClickPreventDefault : msg -> Html.Attribute msg
onClickPreventDefault msg =
    onWithOptions
        "click"
        { preventDefault = True
        , stopPropagation = False
        }
        (Json.Decode.succeed msg)
