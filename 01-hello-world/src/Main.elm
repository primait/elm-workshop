module Main exposing (..)

import Html exposing (Html, div)


main : Html msg
main =
    div []
        [ Html.text simple
        , Html.text (sayHelloTo "Prima")
        , div [] (List.map helloSection [ "John", "George", "Paul", "Ringo" ])
        , div [] (List.map (div [] << List.singleton << customHello "Hey") [ "John", "George", "Paul", "Ringo" ])
        , div []
            ([ "John", "George", "Paul", "Ringo" ]
                |> List.filter (\name -> String.length name > 4)
                |> List.map helloSection
            )
        ]


{-| const or function?
-}
simple : String
simple =
    "Hello World!"


sayHelloTo : String -> String
sayHelloTo =
    (++) "Hello, "


{-| tacit programming?
-}
helloSection : String -> Html msg
helloSection name =
    div [] [ Html.text <| sayHelloTo name ]


type alias Name =
    String


type alias Greeting =
    String


{-| tacit programming? Impossible? maybe with a function?
-}
customHello : Name -> Greeting -> Html msg
customHello greeting name =
    Html.text (greeting ++ ", " ++ name ++ "!")
