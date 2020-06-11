module UpdateHelper exposing (..)


withoutCommands : model -> ( model, Cmd msg )
withoutCommands model =
    ( model, Cmd.none )
