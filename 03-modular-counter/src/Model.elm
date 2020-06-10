module Model exposing (Flags, Model, Msg(..))


type alias Flags =
    {}


type alias Model =
    { value : Int }


type Msg
    = Increment
    | Decrement
