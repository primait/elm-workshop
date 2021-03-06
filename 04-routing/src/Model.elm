module Model exposing (Flags, Model, Msg(..), initialModel)

import Browser exposing (UrlRequest)
import Browser.Navigation exposing (Key)
import Counter.Model as CounterModel
import Routing exposing (Page, urlToPage)
import Url


type Msg
    = UrlChanged Url.Url
    | UrlRequested UrlRequest
    | CounterMsg CounterModel.Msg


type alias Flags =
    {}


type alias Id =
    Int


type alias Model =
    { page : Page
    , counters : List ( Id, CounterModel.Model )
    , flags : Flags
    , url : Url.Url
    , key : Key
    , counterModel : CounterModel.Model
    }


initialModel : Flags -> Url.Url -> Key -> Model
initialModel flags url key =
    Model (urlToPage url) [] flags url key CounterModel.initialModel
