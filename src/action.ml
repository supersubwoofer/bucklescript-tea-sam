open Type

let propose actionMsg initData =
  match actionMsg with
  | Start -> StartStatus true
  | Decrement -> DecrementValue 1
  | Launch -> LaunchStatus true
  | Abort -> AbortStatus true
  | Reset -> ResetProposal initData