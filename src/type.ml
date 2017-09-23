type model = { 
  started: bool;   
  counter: int;  
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