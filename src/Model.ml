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
  let currentState = getState model in 
  match currentState with
  | Ready -> { model with started = proposal.started }
  | Counting when model.counter = 0 -> { model with launched = proposal.launched }
  | Counting -> { model with aborted = proposal.aborted; counter = proposal.counter }
  | Aborted when proposal.counter = counterMax -> initModel
  | Aborted -> model
  | _ -> model