open Tea_cmd
open Type
open Config
open View

let getState model = 
  match model with 
  | { started = false; launched = false; aborted = false } when model.counter = counterMax -> Ready
  | { started = true; launched = false; aborted = false } when model.counter <= counterMax -> Counting
  | { started = true; launched = false; aborted = true } when model.counter <= counterMax && model.counter >= 0 -> Aborted
  | { started = true; launched = true; aborted = false } when model.counter = 0 -> Launched
  | _ -> Unresolved

let representation model =
  let currentState = getState model in
  match currentState with
  | Ready -> ready model
  | Counting -> counting model
  | Aborted -> aborted model
  | Launched -> launched model
  | Unresolved -> unresolved model

let nextAction model = 
  let currentState = getState model in
  match currentState with
  | Counting when model.counter > 0 -> model, Tea_time.delay 1000.0 Decrement
  | Counting when model.counter = 0 -> model, msg Launch
  | Counting -> model, none
  | _ -> model, none