module Model exposing (Flags, Model, Msg(..), decrementValue, incrementValue, initialModel)


type alias Flags =
    { initialValue : Maybe Int }


type alias Model =
    { value : Int }


initialModel : Flags -> Model
initialModel flags =
    Model <| Maybe.withDefault 0 flags.initialValue


type Msg
    = Increment
    | Decrement


incrementValue : Model -> Model
incrementValue model =
    { model | value = model.value + 1 }


decrementValue : Model -> Model
decrementValue model =
    { model | value = model.value - 1 }
