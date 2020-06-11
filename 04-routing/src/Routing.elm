module Routing exposing (Page(..), pageToUrl, urlToPage)

import Url
import Url.Parser as UrlParser exposing (Parser, s)


type Page
    = Homepage
    | Counter
    | NotFound


pageToUrl : Page -> String
pageToUrl page =
    case page of
        Homepage ->
            "/"

        Counter ->
            "/counter"

        NotFound ->
            "/not-found"


urlToPage : Url.Url -> Page
urlToPage url =
    url
        |> UrlParser.parse urlParser
        |> Maybe.withDefault NotFound


urlParser : Parser (Page -> a) a
urlParser =
    UrlParser.oneOf
        [ UrlParser.map Homepage UrlParser.top
        , UrlParser.map Counter (s "counter")
        ]
