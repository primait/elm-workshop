module Counter.Init exposing (..)

import Counter.Model exposing (Flags, Model, Msg)


init : Int -> ( Model, Cmd Msg )
init startFrom =
    ( Model startFrom, Cmd.none )
