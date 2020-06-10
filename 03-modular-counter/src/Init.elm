module Init exposing (..)

import Model exposing (Flags, Model, Msg)


init : Flags -> ( Model, Cmd Msg )
init _ =
    ( Model 0, Cmd.none )
