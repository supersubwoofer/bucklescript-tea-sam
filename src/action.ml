open Type
open Model

let propose model actionMsg =
  match actionMsg with
  | Start -> { model with started = true }
  | Decrement -> { model with counter = model.counter - 1 }
  | Launch -> { model with launched = true }
  | Abort -> { model with aborted = true }
  | Reset -> initModel