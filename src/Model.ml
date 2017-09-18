open Tea_cmd
open Type
open Config
open State

let initModel = { 
  counter = counterMax; 
  started = false; 
  launched = false; 
  aborted = false; 
}
let init() = initModel, none

let present model proposal =
  let currentState = getState model
  in match currentState with
  | Ready ->
      { model with started = proposal.started }
  | Counting -> 
  	if model.counter = 0 then
      { model with launched = proposal.launched }
		else 
      { model with aborted = proposal.aborted; counter = proposal.counter; }
  | Aborted ->
    if proposal.counter = counterMax then
      initModel
    else
      model
  | _ -> model