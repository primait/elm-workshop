module View exposing (view)

import Browser exposing (Document)
import Html exposing (Html, br, button, div, text)
import Html.Events exposing (onClick)
import Model exposing (Model, Msg(..))


view : Model -> Document Msg
view model =
    { title = "Counter", body = [ doView model ] }


doView : Model -> Html Msg
doView model =
    div []
        [ button [ onClick Increment ] [ text "+" ]
        , br [] []
        , text (String.fromInt model.value)
        , br [] []
        , button [ onClick Decrement ] [ text "-" ]
        ]
