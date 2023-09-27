module Main exposing (main)
import Browser
import Html exposing(div)
import Css exposing(Style,backgroundColor, width, height,px,batch,hex)
import Html.Styled exposing(Html,text)
import Html.Events exposing (..)
import Html.Attributes exposing (class)


type alias Model =
    Int


initialModel : Model
initialModel =
    0

create_div : Style
create_div =
      batch  [
            width (px  30),
            height (px  30),
            backgroundColor (hex, "1F3453")

       ]
view : Model -> Html msg
view model =
    div [create_div ][text "hello"]


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


main : Program () Model Msg
main =
    Browser.sandbox
        { init = initialModel
        , view = view
        , update = update
        }






view : Model -> Html Msg
view model =
    nav []  [p[] [text "hello"] ] 


main : Program () Model Msg
main =
    Browser.sandbox
        { view = view >> toUnstyled
        , update = update
        , init = initialModel
        }


update : Msg -> Model -> Model
update msg model =
    model


type Msg
    = DoSomething


type alias Model =
    ()


initialModel : Model
initialModel =
    ()

module Main exposing (..)
import Browser
import Css exposing (Style,batch,hex,width,height,pct,px,color,fontWeight,bold,xxLarge,margin,auto,textAlign,center,fontSize,fontFamilies,larger)
import Html exposing (img,p,div, text)
import Html.Attributes exposing (src, type_, class)
import Css exposing (margin2)
import Svg.Styled.Attributes exposing (css)

createbody : Style
createbody =
     batch [
        margin Css.zero
        height (pct 100)
     ]
create_content_body : Style
create_content_body = 
           batch 
                [
                    width (pct 70),
                    height (pct 100),
                    margin Css.auto,
                    textAlign center 
                ]

create_app_main_heading : Style
create_app_main_heading = 
                   batch
                   [
                    color (hex, "000000"),
                    fontWeight bold,
                    fontSize xxLarge,
                    fontFamilies ["Arial" "Helvetica" "sans-serif"]
                   ]

create_div : Style
create_div =
      batch  [

            width (px  30),
            height (px  30)
        
       ]
create_app_sub_heading : Style
create_app_sub_heading =
           batch
           [
            color (hex "0000FF"),
            fontWeight (px 700),
            fontSize larger,
            fontFamilies ["Verdana" "Geneva" "Tahoma" "sans-serif"]

           ]

main =
       div [class createbody] 
       [
        div [css [create_content_body]]
        [
            img [src ""], 
            p [css [create_app_main_heading]] [text "Welcome to Eduvcative Answers"],
            p [css create_app_sub_heading] [text "Using Elm CSS"]
            
        ]
       ]



          



     



-- module Main exposing (main)
-- import Browser
-- import Css exposing (Style,batch,hex,width,height,pct,px,color,fontWeight,bold,xxLarge,margin,auto,textAlign,center,fontSize,fontFamilies,larger)
-- import Html exposing (Html, button, div, text,img,p)
-- import Html.Attributes exposing (src, type_, class)
-- import Html.Styled.Attributes exposing (css)
-- import Html.Events exposing (onClick)
-- import Browser.Navigation exposing (back)
-- import Css exposing (backgroundColor)

-- -- MAIN
-- main =
--   Browser.sandbox { init = init, update = update, view = view }

-- style_button : Style
-- style_button =
--      batch [
--         margin (px 10),
--         height (pct 100),
--         width (px 100),
--         backgroundColor (hex "0000FF")
--      ]

-- -- MODEL

-- type alias Model = Int

-- init : Model
-- init =
--   0
-- -- UPDATE
-- type Msg = Increment | Decrement
-- update : Msg -> Model -> Model
-- update msg model =
--   case msg of
--     Increment ->
--       model + 1

--     Decrement ->
--       model - 1


-- -- VIEW
-- view : Model -> Html Msg
-- view model =
--   div [ styled_div [css [ width (pct 100) ]]]
--     [ button  [ onClick Decrement ] [ text "-" ]
--     , div [] [ text (String.fromInt model) ]
--     , button [ onClick Increment ] [ text "+" ]
    
