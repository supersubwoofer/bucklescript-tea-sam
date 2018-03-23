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
  match controlState model with
  | Ready -> { model with started = proposal.started }
  | Counting ->
      begin match model.counter with
      | 0 -> { model with launched = proposal.launched } 
      | _ -> { model with started = proposal.started; counter = proposal.counter; aborted = proposal.aborted }
      end
  | Aborted when proposal = initModel -> proposal
  | _ -> model