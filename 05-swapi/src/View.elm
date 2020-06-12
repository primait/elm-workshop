module View exposing (view)

import Browser exposing (Document)
import Counter.View
import Html exposing (Html, a, div, nav, text)
import Html.Attributes exposing (href)
import Model exposing (Model, Msg(..))
import Routing exposing (Page(..), pageToUrl)


view : Model -> Document Msg
view model =
    { title = "Homepage", body = [ doView model ] }


doView : Model -> Html Msg
doView model =
    nav []
        [ div [] [ a [ href (pageToUrl Homepage) ] [ text "homepage" ] ]
        , div [] [ a [ href (pageToUrl Counter) ] [ text "counter" ] ]
        , viewPage model
        ]


viewPage : Model -> Html Msg
viewPage model =
    case model.page of
        Homepage ->
            Html.text "homepage"

        Counter ->
            Html.map CounterMsg <| Counter.View.view model.counterModel

        NotFound ->
            Html.text "not found"
