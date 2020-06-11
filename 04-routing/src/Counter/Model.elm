module Counter.Model exposing (Model, Msg(..), initialModel)


type alias Model =
    { value : Int }


type Msg
    = Increment
    | Decrement


initialModel : Model
initialModel =
    Model 0
