open Type
open Config

let propose model action =
  match action with
  | Start -> 
    { model with started = true }
  | Decrement -> 
    { model with counter = model.counter - 1 }
  | Launch -> 
    { model with launched = true }
  | Abort -> 
    { model with aborted = true }
  | Reset ->
    { model with counter = counterMax }