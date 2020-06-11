module Main exposing (..)

import Browser exposing (sandbox)
import Html exposing (br, button, div, text)
import Html.Events exposing (onClick)


main : Program () Model Msg
main =
    sandbox { init = initialModel, view = view, update = update }


type alias Model =
    { number : Int }


{-| real type, not alias

  - constructors
  - also alias is a constructor!

-}
type Msg
    = Increment Int
    | Decrement


initialModel : Model
initialModel =
    Model 0


{-| events
-}
view : Model -> Html.Html Msg
view model =
    div []
        [ button [ onClick (Increment 2) ] [ text "+" ]
        , br [] []
        , text (String.fromInt model.number)
        , br [] []
        , button [ onClick Decrement ] [ text "-" ]
        ]


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment n ->
            let
                newModel =
                    { model | number = model.number + n }
            in
            newModel

        Decrement ->
            { model | number = model.number - 1 }
