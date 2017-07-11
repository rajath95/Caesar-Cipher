-- Read all about this program in the official Elm guide:
-- https://guide.elm-lang.org/architecture/user_input/text_fields.html

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import String
import List  exposing(..)


main =
  beginnerProgram { model = model, view = view, update = update }

type alias Model=
  {
   content: String,
   blaze: String,
   jaan: String
}

model: Model
model =
  Model " " "" " "

fizz: String -> String
fizz s= String.map (\c -> if c == 'a' then 'f'
                          else if c=='b' then 'g'
                          else if c=='c' then 'h'
                          else if c=='d' then 'i'
                          else if c=='e' then 'j'
                          else if c=='f' then 'k'
                          else if c=='g' then 'l'
                          else if c=='h' then 'm'
                          else if c=='i' then 'n'
                          else if c=='j' then 'o'
                          else if c=='k' then 'p'
                          else if c=='l' then 'q'
                          else if c=='m' then 'r'
                          else if c=='n' then 's'
                          else if c=='o' then 't'
                          else if c=='p' then 'u'
                          else if c=='q' then 'v'
                          else if c=='r' then 'w'
                          else if c=='s' then 'x'
                          else if c=='t' then 'y'
                          else if c=='u' then 'z'
                          else if c=='v' then 'a'
                          else if c=='w' then 'b'
                          else if c=='x' then 'c'
                          else if c=='y' then 'd'
                          else if c=='z' then 'e'
                          else c) s





type Msg = NewContent String| Encrypt | Decrypt | Welcome| Bye

update : Msg -> Model -> Model
update msg model =
  case msg of
  NewContent s -> {model| blaze = s}
  Encrypt ->  { model|content=  fizz model.blaze}
  Decrypt-> {model| content=  model.blaze}
  Welcome -> {model| jaan= "Enter the message"}
  Bye-> {model| jaan=" "}



--map : (Char -> Char) -> String -> String
--map (\c -> if c == '/' then '.' else c) "a/b/c" == "a.b.c"



-- VIEW
view model =
  div []
    [ div [newStyle][node "center" [][h1[][ text "Caesar    Cipher"]]]
    , div [myStyle][ input [ placeholder "Text to encrypt", onInput NewContent,onMouseEnter Welcome,onMouseLeave Bye, myStyle] []], br[][],br[][]
    , div [ myStyle ] [ text (model.jaan) ]
    , button [ onClick Encrypt][ text "Encrypt"]
    , div [ myStyle ] [ text (model.content) ]
    , button [onClick Decrypt][text "Decrypt"]

    ]



myStyle =
  style
    [ ("width", "80%")
    , ("height", "80px")
    , ("padding", "10px 0")
    , ("font-size", "2em")
    , ("text-align", "center")
    ,("margin","0 auto")
    ]

newStyle =
  style
  [  ("font-family", "Papyrus")

  ,  ("font-size","25px")
  ]



















