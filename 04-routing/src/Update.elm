module Update exposing (update)

import Browser exposing (UrlRequest(..))
import Browser.Navigation as Nav
import Counter.Update as CounterUpdate
import Model exposing (Model, Msg(..))
import Routing exposing (urlToPage)
import Url


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UrlChanged url ->
            ( { model | page = urlToPage url }, Cmd.none )

        UrlRequested urlRequest ->
            let
                command =
                    case urlRequest of
                        Internal url ->
                            Nav.pushUrl model.key <| Url.toString url

                        External string ->
                            Nav.load string
            in
            ( model, command )

        CounterMsg msg_ ->
            let
                ( subModel, subMsg ) =
                    CounterUpdate.update msg_ model.counterModel
            in
            ( { model | counterModel = subModel }, Cmd.map CounterMsg subMsg )
