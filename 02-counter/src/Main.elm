module Main exposing (..)

import Browser exposing (sandbox)
import Html exposing (br, button, div, text)
import Html.Events exposing (onClick)


main : Program () Int Msg
main =
    sandbox { init = initialModel, view = view, update = update }


{-| real type, not alias

  - constructors
  - also alias is a constructor!

-}
type Msg
    = Increment
    | Decrement


initialModel : Int
initialModel =
    0


{-| events
-}
view : Int -> Html.Html Msg
view model =
    div []
        [ button [ onClick Increment ] [ text "+" ]
        , br [] []
        , text (String.fromInt model)
        , br [] []
        , button [ onClick Decrement ] [ text "-" ]
        ]


update : Msg -> Int -> Int
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1
