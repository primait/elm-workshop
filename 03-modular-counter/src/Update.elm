module Update exposing (update)

import Model as M exposing (Model, Msg(..))
import UpdateHelper as UH


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Increment ->
            model
                |> M.incrementValue
                |> UH.withoutCommands

        Decrement ->
            model
                |> M.decrementValue
                |> UH.withoutCommands
