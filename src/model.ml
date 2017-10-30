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
  let currentState = getState model in 
  match currentState with
  | Ready -> { model with started = proposal.started }
  | Counting when model.counter = 0 -> { model with launched = proposal.launched } 
  | Counting -> { model with started = proposal.started; counter = proposal.counter; aborted = proposal.aborted }
  | Aborted when proposal = initModel -> proposal
  | _ -> model