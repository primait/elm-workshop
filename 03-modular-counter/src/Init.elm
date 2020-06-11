module Init exposing (..)

import Model exposing (Flags, Model, Msg)


init : Flags -> ( Model, Cmd Msg )
init flags =
    ( Model.initialModel flags, Cmd.none )
