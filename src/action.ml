open Type

let propose actionMsg =
  match actionMsg with
  | Start -> StartStatus true
  | Decrement -> DecrementValue 1
  | Launch -> LaunchStatus true
  | Abort -> AbortStatus true
  | Reset -> ResetProposal