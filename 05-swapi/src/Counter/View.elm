module Counter.View exposing (view)

import Browser exposing (Document)
import Counter.Model exposing (Model, Msg(..))
import Html exposing (Html, br, button, div, text)
import Html.Events exposing (onClick)


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Increment ] [ text "+" ]
        , br [] []
        , text (String.fromInt model.value)
        , br [] []
        , button [ onClick Decrement ] [ text "-" ]
        ]
