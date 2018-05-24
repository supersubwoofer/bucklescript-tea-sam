type state = 
  | Ready
  | Counting
  | Aborted
  | Launched
  | Unresolved

type actionMsg =
  | Start
  | Decrement
  | Launch
  | Abort 
  | Reset

type model = { 
  counter: int;  
  started: bool;   
  launched: bool;
  aborted: bool
}

(* proposal decouple from model *)
type proposal = 
  | StartStatus of bool
  | DecrementValue of int
  | LaunchStatus of bool
  | AbortStatus of bool
  | ResetProposal
