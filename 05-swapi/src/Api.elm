module Api exposing (..)

import Gql.Swapi.Object
import Gql.Swapi.Query as Query
import Graphql.SelectionSet as SelectionSet exposing (SelectionSet)
import Model exposing (Movie)


listMovies : SelectionSet (List Movie) Gql.Swapi.Object.Film
listMovies =
    Query.allFilms identity


filmsConnection : SelectionSet (List Movie) Gql.Swapi.Object.FilmsConnection
