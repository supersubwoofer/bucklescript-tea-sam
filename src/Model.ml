open Tea_cmd
open Type
open Config
open State

let initModel = { 
  started = false; 
  counter = const_counter_max; 
}
let init() = initModel, none

let present model proposal =
  let currentState = getState model in 
  match currentState with
  | Ready -> { model with started = proposal.started }
  | Counting -> { started = proposal.started; counter = proposal.counter }
  | Aborted when proposal.counter = const_counter_max -> initModel
  | _ -> model