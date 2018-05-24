open Tea_cmd
open Type
open Config
open State

let initModel = { 
  started = false; 
  counter = const_counter_max; 
  launched = false;
  aborted = false;
}
let init() = initModel, none

let present model proposal =
  let state_proposal = (controlState model, proposal) in
  match state_proposal with
  | (Ready, StartStatus data) -> { model with started = data }
  | (Counting, DecrementValue data) -> { model with counter = model.counter - data }
  | (Counting, AbortStatus data) -> { model with aborted = data }
  | (Counting, LaunchStatus data) -> { model with launched = data }
  | (Aborted, ResetProposal) -> initModel
  | _ -> model