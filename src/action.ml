open Type

let propose initData = function
  | Start -> StartStatus true
  | Decrement -> DecrementValue 1
  | Launch -> LaunchStatus true
  | Abort -> AbortStatus true
  | Reset -> ResetProposal initData