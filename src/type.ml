type model = { 
  counter: int;  
  started: bool;   
  launched: bool;
  aborted: bool
}
type proposal = model

type actionMsg =
  | Start
  | Decrement
  | Launch
  | Abort 
  | Reset

type state = 
  | Ready
  | Counting
  | Aborted
  | Launched
  | Unresolved