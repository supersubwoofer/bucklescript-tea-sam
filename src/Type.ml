type model = { 
  counter: int;
  started: bool;      
  launched: bool; 
  aborted: bool;
}

type action =
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