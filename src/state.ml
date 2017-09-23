open Tea_cmd
open Type
open Config
open View

let getState model = 
  match model with 
  | { started = false } when model.counter = const_counter_max -> Ready
  | { started = false } when model.counter < const_counter_max-> Aborted
  | { started = true } when model.counter > 0 && model.counter <= const_counter_max -> Counting
  | { started = true } when model.counter = 0 -> Launched
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
  | _ -> model, none