open Type
open Config

let propose model actionMsg =
  match actionMsg with
  | Start -> { model with started = true }
  | Decrement -> { model with counter = model.counter - 1 }
  | Launch -> model
  | Abort -> { model with started = false }
  | Reset -> { model with counter = const_counter_max }