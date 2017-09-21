open Tea_cmd
open Type
open Config
open View

let getState model = 
  if model.counter = counterMax 
    && not model.started 
    && not model.launched 
    && not model.aborted 
    then Ready
  else if model.counter <= counterMax 
    && model.counter >= 0 
    && model.started 
    && not model.launched 
    && not model.aborted
    then Counting
  else if model.counter <= counterMax 
    && model.counter >= 0
		&& model.started 
    && not model.launched 
    && model.aborted 
    then Aborted
  else if model.counter = 0 
    && model.started 
    && model.launched 
    && not model.aborted
    then Launched
  else Unresolved
  
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
  | Counting -> 
  	if model.counter > 0 then
		  model, Tea_time.delay 1000.0 Decrement
    else if model.counter = 0 then
			model, msg Launch
    else model, none
  | _ -> model, none
