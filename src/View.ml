open Tea.Html
open Type

let h1 _model =
  h1
    []
    [ span
      []
      [ text "SAM rocket example: Bucklescript-TEA -> SAM" ]
    ]

let button title msg =
  button 
    [ onClick msg ] 
    [ text title ]

let ready model =
   div
    []
    [ h1 model
    ; span
        [ style "text-weight" "bold" ]
        [ text ("Counter: " ^ string_of_int model.counter) ]
    ; br []
    ; button "Start" Start
    ]

let counting model = 
  div
    []
    [ h1 model
    ; span
        [ style "text-weight" "bold" ]
        [ text ("Count down: " ^ string_of_int model.counter) ]
    ; br []
    ; button "Abort" Abort
    ]

let aborted model = 
  div
    []
    [ h1 model
    ; span
        [ style "text-weight" "bold" ]
        [ text ("Aborted at Counter: " ^ string_of_int model.counter) ]
    ; br []
    ; button "Reset" Reset
    ]

let launched _model =
  div
    []
    [ h1 _model
    ; span
        [ style "text-weight" "bold" ]
        [ text "Launched" ]
    ]

let unresolved _model =
  div
    []
    [ h1 _model
    ; span
        [ style "text-weight" "bold" ]
        [ text "oops... something went wrong, the system is in an invalid state" ]
    ]
