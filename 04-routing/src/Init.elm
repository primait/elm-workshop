module Init exposing (..)

import Browser.Navigation exposing (Key)
import Model exposing (Flags, Model, Msg, initialModel)
import Url


init : Flags -> Url.Url -> Key -> ( Model, Cmd Msg )
init flags url key =
    ( initialModel flags url key, Cmd.none )
